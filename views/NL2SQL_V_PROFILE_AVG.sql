
  CREATE OR REPLACE FORCE EDITIONABLE VIEW "DEV_USER"."NL2SQL_V_PROFILE_AVG" ("PROFILE", "AVG_TOTAL_SEC", "AVG_Q1_SEC", "AVG_Q2_SEC", "AVG_Q3_SEC", "AVG_Q4_SEC", "AVG_Q5_SEC", "AVG_Q6_SEC", "AVG_Q7_SEC", "AVG_Q8_SEC", "AVG_Q9_SEC", "AVG_Q10_SEC", "AVG_QUESTION_SEC") DEFAULT COLLATION "USING_NLS_COMP"  AS
  WITH submits AS (
  SELECT
    l.batch_id,
    p.profile,
    p.prompt,
    p.asked_on,
    COALESCE(l.elapsed_ms, CASE WHEN l.end_ts IS NOT NULL THEN NL2SQL_EVT_MS(l.start_ts, l.end_ts) END) AS elapsed_ms
  FROM NL2SQL_EVENT_LOG l
  JOIN NL2SQL_PROMPTS p
    ON p.id = l.prompt_id
  WHERE UPPER(l.event_name) = 'SUBMIT_TOTAL'
),
numbered AS (
  SELECT
    s.*,
    ROW_NUMBER() OVER (PARTITION BY s.batch_id ORDER BY s.asked_on) AS question_index
  FROM submits s
),
batch_totals AS (
  SELECT
    b.batch_id,
    b.profile,
    b.round_trip_sec
  FROM NL2SQL_V_BATCH_ROUNDTRIP b
),
profile_q_avg AS (
  SELECT
    profile,
    question_index,
    AVG(elapsed_ms)/1000 AS avg_sec
  FROM numbered
  GROUP BY profile, question_index
),
profile_total_avg AS (
  SELECT
    profile,
    AVG(round_trip_sec) AS avg_total_sec
  FROM batch_totals
  GROUP BY profile
)
SELECT
  t.profile,
  t.avg_total_sec,
  MAX(CASE WHEN q.question_index = 1  THEN q.avg_sec END) AS avg_q1_sec,
  MAX(CASE WHEN q.question_index = 2  THEN q.avg_sec END) AS avg_q2_sec,
  MAX(CASE WHEN q.question_index = 3  THEN q.avg_sec END) AS avg_q3_sec,
  MAX(CASE WHEN q.question_index = 4  THEN q.avg_sec END) AS avg_q4_sec,
  MAX(CASE WHEN q.question_index = 5  THEN q.avg_sec END) AS avg_q5_sec,
  MAX(CASE WHEN q.question_index = 6  THEN q.avg_sec END) AS avg_q6_sec,
  MAX(CASE WHEN q.question_index = 7  THEN q.avg_sec END) AS avg_q7_sec,
  MAX(CASE WHEN q.question_index = 8  THEN q.avg_sec END) AS avg_q8_sec,
  MAX(CASE WHEN q.question_index = 9  THEN q.avg_sec END) AS avg_q9_sec,
  MAX(CASE WHEN q.question_index = 10 THEN q.avg_sec END) AS avg_q10_sec,
  AVG(q.avg_sec) AS avg_question_sec  -- average of per-question averages for ordering
FROM profile_total_avg t
LEFT JOIN profile_q_avg q
  ON q.profile = t.profile
GROUP BY
  t.profile,
  t.avg_total_sec;

