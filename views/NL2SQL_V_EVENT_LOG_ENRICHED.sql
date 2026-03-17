
  CREATE OR REPLACE FORCE EDITIONABLE VIEW "DEV_USER"."NL2SQL_V_EVENT_LOG_ENRICHED" ("EVENT_ID", "BATCH_ID", "CONV_ID", "PROMPT_ID", "EVENT_NAME", "LABEL", "START_TS", "END_TS", "ELAPSED_MS", "EVENT_ELAPSED_MS", "ROUND_TRIP_MS", "EVENTS_IN_BATCH", "BATCH_START_TS", "BATCH_END_TS", "PROMPT", "PROFILE") DEFAULT COLLATION "USING_NLS_COMP"  AS
  SELECT
  l.event_id,
  l.batch_id,
  l.conv_id,
  l.prompt_id,
  l.event_name,
  l.label,
  l.start_ts,
  l.end_ts,
  l.elapsed_ms,
  /* Compute event elapsed if missing, only when end_ts is present */
  COALESCE(
    l.elapsed_ms,
    CASE WHEN l.end_ts IS NOT NULL THEN NL2SQL_EVT_MS(l.start_ts, l.end_ts) END
  ) AS event_elapsed_ms,
  /* Per-batch round-trip total (sum of event elapsed) */
  SUM(
    COALESCE(l.elapsed_ms, CASE WHEN l.end_ts IS NOT NULL THEN NL2SQL_EVT_MS(l.start_ts, l.end_ts) END)
  ) OVER (PARTITION BY l.batch_id) AS round_trip_ms,
  COUNT(*) OVER (PARTITION BY l.batch_id) AS events_in_batch,
  MIN(l.start_ts) OVER (PARTITION BY l.batch_id) AS batch_start_ts,
  MAX(l.end_ts)   OVER (PARTITION BY l.batch_id) AS batch_end_ts,
  p.prompt,
  p.profile
FROM NL2SQL_EVENT_LOG l
LEFT JOIN NL2SQL_PROMPTS p
  ON p.id = l.prompt_id
WHERE UPPER(l.event_name) <> 'JS_RENDER_TOTAL';

