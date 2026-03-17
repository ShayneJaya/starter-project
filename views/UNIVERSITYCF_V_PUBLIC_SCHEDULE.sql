
  CREATE OR REPLACE FORCE EDITIONABLE VIEW "DEV_USER"."UNIVERSITYCF_V_PUBLIC_SCHEDULE" ("OFFERING_ID", "COURSE_CODE", "COURSE_ID", "DEPARTMENT_CODE", "COURSE_NUMBER", "COURSE_TITLE", "CREDITS", "SECTION_CODE", "INSTRUCTOR", "SEMESTER_ID", "SEMESTER_CODE", "SEMESTER_NAME", "DAY_OF_WEEK", "START_MINUTE", "END_MINUTE", "START_TIME", "END_TIME", "BUILDING_CODE", "ROOM_NUMBER") DEFAULT COLLATION "USING_NLS_COMP"  AS
  SELECT
  o.offering_id,
  d.code || ' ' || c.course_number   AS course_code,
  c.course_id,
  d.code                             AS department_code,
  c.course_number,
  c.title                            AS course_title,
  c.credits,

  o.section_code,
  o.instructor,

  sem.semester_id,
  sem.code                           AS semester_code,
  sem.name                           AS semester_name,

  m.day_of_week,
  m.start_minute,
  m.end_minute,
  UniversityCF_mins_to_time(m.start_minute) AS start_time,
  UniversityCF_mins_to_time(m.end_minute)   AS end_time,

  b.code                             AS building_code,
  r.room_number
FROM UniversityCF_course_offerings o
JOIN UniversityCF_courses c        ON c.course_id     = o.course_id
JOIN UniversityCF_departments d    ON d.department_id = c.department_id
JOIN UniversityCF_semesters sem    ON sem.semester_id = o.semester_id
LEFT JOIN UniversityCF_offering_meetings m ON m.offering_id = o.offering_id
LEFT JOIN UniversityCF_rooms r      ON r.room_id       = m.room_id
LEFT JOIN UniversityCF_buildings b  ON b.building_id   = r.building_id;

