
  CREATE OR REPLACE FORCE EDITIONABLE VIEW "DEV_USER"."UNIVERSITYCF_V_OFFERING_BROWSE" ("OFFERING_ID", "COURSE_CODE", "SECTION_CODE", "TITLE", "CREDITS", "SEMESTER_CODE", "INSTRUCTOR", "DAY_OF_WEEK", "START_TIME", "END_TIME") DEFAULT COLLATION "USING_NLS_COMP"  AS
  WITH base AS (
  SELECT
    o.offering_id,
    d.code AS dept_code,
    c.course_number,
    c.title,
    c.credits,
    o.section_code,
    sem.code AS semester_code,
    o.instructor,
    m.day_of_week,
    m.start_minute,
    m.end_minute
  FROM UniversityCF_course_offerings o
  JOIN UniversityCF_courses c        ON c.course_id = o.course_id
  JOIN UniversityCF_departments d    ON d.department_id = c.department_id
  JOIN UniversityCF_semesters sem    ON sem.semester_id = o.semester_id
  LEFT JOIN UniversityCF_offering_meetings m ON m.offering_id = o.offering_id
),
norm AS (
  SELECT
    offering_id,
    dept_code,
    course_number,
    title,
    credits,
    section_code,
    semester_code,
    instructor,
    CASE day_of_week
      WHEN 'MON' THEN 'M'
      WHEN 'TUE' THEN 'T'
      WHEN 'WED' THEN 'W'
      WHEN 'THU' THEN 'Th'
      WHEN 'FRI' THEN 'F'
      WHEN 'SAT' THEN 'Sa'
      WHEN 'SUN' THEN 'Su'
    END AS day_label,
    CASE day_of_week
      WHEN 'MON' THEN 1
      WHEN 'TUE' THEN 2
      WHEN 'WED' THEN 3
      WHEN 'THU' THEN 4
      WHEN 'FRI' THEN 5
      WHEN 'SAT' THEN 6
      WHEN 'SUN' THEN 7
    END AS day_order,
    start_minute,
    end_minute
  FROM base
),
agg AS (
  SELECT
    offering_id,
    dept_code || ' ' || course_number AS course_code,
    title,
    credits,
    section_code,
    semester_code,
    instructor,
    LISTAGG(day_label, '/') WITHIN GROUP (ORDER BY day_order) AS day_of_week,
    MIN(start_minute) AS min_start_minute,
    MAX(end_minute)   AS max_end_minute
  FROM norm
  GROUP BY
    offering_id, dept_code, course_number, title, credits,
    section_code, semester_code, instructor
)
SELECT
  offering_id,
  course_code,
  section_code,
  title,
  credits,
  semester_code,
  instructor,
  day_of_week,
  UniversityCF_mins_to_time(min_start_minute) AS start_time,
  UniversityCF_mins_to_time(max_end_minute)   AS end_time
FROM agg;

