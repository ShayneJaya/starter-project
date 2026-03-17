
  CREATE OR REPLACE FORCE EDITIONABLE VIEW "DEV_USER"."NL2SQL_V_BATCH_ROUNDTRIP" ("BATCH_ID", "CONV_ID", "EVENTS_IN_BATCH", "ROUND_TRIP_SEC", "BATCH_START_TS", "BATCH_END_TS", "PROMPT", "PROFILE", "PROMPT_ID") DEFAULT COLLATION "USING_NLS_COMP"  AS
  SELECT
  l.batch_id,
  l.conv_id,
  COUNT(*) AS events_in_batch,
  (SUM(
    COALESCE(l.elapsed_ms, CASE WHEN l.end_ts IS NOT NULL THEN NL2SQL_EVT_MS(l.start_ts, l.end_ts) END)
  ) / 1000) AS round_trip_sec,
  MIN(l.start_ts) AS batch_start_ts,
  MAX(l.end_ts)   AS batch_end_ts,
  i.prompt,
  i.profile,
  i.prompt_id
FROM NL2SQL_EVENT_LOG l
LEFT JOIN NL2SQL_PROMPTS p
  ON p.id = l.prompt_id
LEFT JOIN (
  SELECT
    l2.batch_id,
    MAX(p2.prompt)  KEEP (DENSE_RANK LAST ORDER BY l2.end_ts) AS prompt,
    MAX(p2.profile) KEEP (DENSE_RANK LAST ORDER BY l2.end_ts) AS profile,
    MAX(p2.id)      KEEP (DENSE_RANK LAST ORDER BY l2.end_ts) AS prompt_id
  FROM NL2SQL_EVENT_LOG l2
  JOIN NL2SQL_PROMPTS p2
    ON p2.id = l2.prompt_id
  WHERE UPPER(l2.event_name) = 'INSERT_PROMPT'
  GROUP BY l2.batch_id
) i
  ON i.batch_id = l.batch_id
WHERE UPPER(l.event_name) <> 'JS_RENDER_TOTAL'
GROUP BY
  l.batch_id,
  l.conv_id,
  i.prompt,
  i.profile,
  i.prompt_id;

