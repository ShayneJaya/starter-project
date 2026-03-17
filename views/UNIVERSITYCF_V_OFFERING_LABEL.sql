
  CREATE OR REPLACE FORCE EDITIONABLE VIEW "DEV_USER"."UNIVERSITYCF_V_OFFERING_LABEL" ("OFFERING_ID", "COURSE_CODE", "SECTION_CODE", "TITLE", "CREDITS", "SEMESTER_ID", "INSTRUCTOR") DEFAULT COLLATION "USING_NLS_COMP"  AS
  SELECT
  o.offering_id,
  d.code || ' ' || c.course_number AS course_code,
  o.section_code,
  c.title,
  c.credits,
  o.semester_id,
  o.instructor
FROM UniversityCF_course_offerings o
JOIN UniversityCF_courses c       ON c.course_id = o.course_id
JOIN UniversityCF_departments d   ON d.department_id = c.department_id;

