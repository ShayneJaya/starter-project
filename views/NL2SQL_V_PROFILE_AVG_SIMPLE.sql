
  CREATE OR REPLACE FORCE EDITIONABLE VIEW "DEV_USER"."NL2SQL_V_PROFILE_AVG_SIMPLE" ("PROFILE", "AVG_TOTAL_10Q_SEC", "AVG_ONE_QUESTION_SEC", "QUESTIONS_ASKED") DEFAULT COLLATION "USING_NLS_COMP"  AS
  WITH base AS (
  SELECT
    b.profile AS profile_name,
    b.conv_id,
    b.round_trip_sec
  FROM NL2SQL_V_BATCH_ROUNDTRIP b
),
per_conv AS (
  SELECT
    profile_name,
    conv_id,
    SUM(round_trip_sec) AS conv_total_sec
  FROM base
  GROUP BY profile_name, conv_id
),
per_profile_total AS (
  SELECT
    profile_name,
    AVG(conv_total_sec) AS avg_total_10q_sec
  FROM per_conv
  GROUP BY profile_name
),
per_profile_one AS (
  SELECT
    profile_name,
    AVG(round_trip_sec) AS avg_one_question_sec
  FROM base
  GROUP BY profile_name
),
per_profile_cnt AS (
  SELECT profile_name, COUNT(*) AS questions_asked
  FROM base
  GROUP BY profile_name
)
SELECT
  t.profile_name AS profile,
  ROUND(t.avg_total_10q_sec, 2) AS avg_total_10q_sec,
  ROUND(o.avg_one_question_sec, 2) AS avg_one_question_sec,
  c.questions_asked
FROM per_profile_total t
JOIN per_profile_one o
  ON o.profile_name = t.profile_name
JOIN per_profile_cnt c
  ON c.profile_name = t.profile_name;

