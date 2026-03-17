
  CREATE OR REPLACE FORCE EDITIONABLE VIEW "DEV_USER"."UNIVERSITYCF_V_USER_BREAKS" ("STUDENT_ID", "FULL_NAME", "EMAIL", "BREAK_ID", "SEMESTER_ID", "SEMESTER_CODE", "SEMESTER_NAME", "DAY_OF_WEEK", "START_MINUTE", "END_MINUTE", "START_TIME", "END_TIME", "BREAK_REASON") DEFAULT COLLATION "USING_NLS_COMP"  AS
  WITH ctx AS (
  SELECT COALESCE(sys_context('APEX$SESSION','APP_USER'), USER) AS app_user FROM dual
),
stu AS (
  SELECT s.student_id, s.full_name, s.email
  FROM UniversityCF_students s, ctx
  WHERE UPPER(s.full_name) = UPPER(ctx.app_user)
)
SELECT
  s.student_id,
  s.full_name,
  s.email,

  sb.break_id,
  sb.semester_id,
  sem.code AS semester_code,
  sem.name AS semester_name,

  sb.day_of_week,
  sb.start_minute,
  sb.end_minute,
  UniversityCF_mins_to_time(sb.start_minute) AS start_time,
  UniversityCF_mins_to_time(sb.end_minute)   AS end_time,
  sb.reason AS break_reason
FROM stu s
JOIN UniversityCF_student_breaks sb ON sb.student_id = s.student_id
JOIN UniversityCF_semesters sem     ON sem.semester_id = sb.semester_id;

