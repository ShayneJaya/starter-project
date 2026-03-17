
  CREATE OR REPLACE FORCE EDITIONABLE VIEW "DEV_USER"."UNIVERSITYCF_V_STUDENT_ENROLLMENTS" ("STUDENT_ID", "FULL_NAME", "EMAIL", "ENROLLMENT_ID", "STATUS", "ENROLLED_ON", "SEMESTER_ID", "SEMESTER_CODE", "SEMESTER_NAME", "OFFERING_ID", "SECTION_CODE", "INSTRUCTOR", "COURSE_ID", "DEPARTMENT_CODE", "COURSE_NUMBER", "COURSE_TITLE", "CREDITS", "DAY_OF_WEEK", "START_MINUTE", "END_MINUTE", "START_TIME", "END_TIME", "BUILDING_CODE", "ROOM_NUMBER") DEFAULT COLLATION "USING_NLS_COMP"  AS
  SELECT
  s.student_id,
  s.full_name,
  s.email,
  e.enrollment_id,
  e.status,
  e.enrolled_on,
  sem.semester_id,
  sem.code AS semester_code,
  sem.name AS semester_name,
  o.offering_id,
  o.section_code,
  o.instructor,
  c.course_id,
  d.code AS department_code,
  c.course_number,
  c.title AS course_title,
  c.credits,
  m.day_of_week,
  m.start_minute,
  m.end_minute,
  UniversityCF_mins_to_time(m.start_minute) AS start_time,
  UniversityCF_mins_to_time(m.end_minute)   AS end_time,
  b.code AS building_code,
  r.room_number
FROM UniversityCF_enrollments e
JOIN UniversityCF_students s            ON s.student_id    = e.student_id
JOIN UniversityCF_course_offerings o    ON o.offering_id   = e.offering_id
JOIN UniversityCF_courses c             ON c.course_id     = o.course_id
JOIN UniversityCF_departments d         ON d.department_id = c.department_id
JOIN UniversityCF_semesters sem         ON sem.semester_id = o.semester_id
LEFT JOIN UniversityCF_offering_meetings m ON m.offering_id = o.offering_id
LEFT JOIN UniversityCF_rooms r          ON r.room_id       = m.room_id
LEFT JOIN UniversityCF_buildings b      ON b.building_id   = r.building_id;

