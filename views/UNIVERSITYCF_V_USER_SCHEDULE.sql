
  CREATE OR REPLACE FORCE EDITIONABLE VIEW "DEV_USER"."UNIVERSITYCF_V_USER_SCHEDULE" ("ROW_TYPE", "STUDENT_ID", "FULL_NAME", "EMAIL", "ENROLLMENT_ID", "STATUS", "ENROLLED_ON", "SEMESTER_ID", "SEMESTER_CODE", "SEMESTER_NAME", "OFFERING_ID", "SECTION_CODE", "INSTRUCTOR", "COURSE_ID", "DEPARTMENT_CODE", "COURSE_NUMBER", "COURSE_TITLE", "CREDITS", "DAY_OF_WEEK", "START_MINUTE", "END_MINUTE", "START_TIME", "END_TIME", "BUILDING_CODE", "ROOM_NUMBER", "BREAK_ID", "BREAK_REASON") DEFAULT COLLATION "USING_NLS_COMP"  AS
  WITH ctx AS (
  SELECT COALESCE(sys_context('APEX$SESSION','APP_USER'), USER) AS app_user FROM dual
),
stu AS (
  SELECT s.student_id, s.full_name, s.email
  FROM UniversityCF_students s, ctx
  WHERE UPPER(s.full_name) = UPPER(ctx.app_user)
),
class_rows AS (
  SELECT
    'CLASS' AS row_type,

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
    r.room_number,

    CAST(NULL AS NUMBER)          AS break_id,
    CAST(NULL AS VARCHAR2(4000))  AS break_reason
  FROM stu s
  JOIN UniversityCF_enrollments e         ON e.student_id  = s.student_id
  JOIN UniversityCF_course_offerings o    ON o.offering_id = e.offering_id
  JOIN UniversityCF_courses c             ON c.course_id   = o.course_id
  JOIN UniversityCF_departments d         ON d.department_id = c.department_id
  JOIN UniversityCF_semesters sem         ON sem.semester_id = o.semester_id
  LEFT JOIN UniversityCF_offering_meetings m ON m.offering_id = o.offering_id
  LEFT JOIN UniversityCF_rooms r          ON r.room_id     = m.room_id
  LEFT JOIN UniversityCF_buildings b      ON b.building_id = r.building_id
),
break_rows AS (
  SELECT
    'BREAK' AS row_type,

    s.student_id,
    s.full_name,
    s.email,

    CAST(NULL AS NUMBER)          AS enrollment_id,
    CAST(NULL AS VARCHAR2(20))    AS status,
    CAST(NULL AS DATE)            AS enrolled_on,

    sb.semester_id,
    sem.code AS semester_code,
    sem.name AS semester_name,

    CAST(NULL AS NUMBER)          AS offering_id,
    CAST(NULL AS VARCHAR2(10))    AS section_code,
    CAST(NULL AS VARCHAR2(200))   AS instructor,

    CAST(NULL AS NUMBER)          AS course_id,
    CAST(NULL AS VARCHAR2(20))    AS department_code,
    CAST(NULL AS VARCHAR2(10))    AS course_number,
    CAST(NULL AS VARCHAR2(300))   AS course_title,
    CAST(NULL AS NUMBER)          AS credits,

    sb.day_of_week,
    sb.start_minute,
    sb.end_minute,
    UniversityCF_mins_to_time(sb.start_minute) AS start_time,
    UniversityCF_mins_to_time(sb.end_minute)   AS end_time,

    CAST(NULL AS VARCHAR2(20))   AS building_code,
    CAST(NULL AS VARCHAR2(20))   AS room_number,

    sb.break_id,
    sb.reason AS break_reason
  FROM stu s
  JOIN UniversityCF_student_breaks sb ON sb.student_id = s.student_id
  JOIN UniversityCF_semesters sem     ON sem.semester_id = sb.semester_id
)
SELECT "ROW_TYPE","STUDENT_ID","FULL_NAME","EMAIL","ENROLLMENT_ID","STATUS","ENROLLED_ON","SEMESTER_ID","SEMESTER_CODE","SEMESTER_NAME","OFFERING_ID","SECTION_CODE","INSTRUCTOR","COURSE_ID","DEPARTMENT_CODE","COURSE_NUMBER","COURSE_TITLE","CREDITS","DAY_OF_WEEK","START_MINUTE","END_MINUTE","START_TIME","END_TIME","BUILDING_CODE","ROOM_NUMBER","BREAK_ID","BREAK_REASON" FROM class_rows
UNION ALL
SELECT "ROW_TYPE","STUDENT_ID","FULL_NAME","EMAIL","ENROLLMENT_ID","STATUS","ENROLLED_ON","SEMESTER_ID","SEMESTER_CODE","SEMESTER_NAME","OFFERING_ID","SECTION_CODE","INSTRUCTOR","COURSE_ID","DEPARTMENT_CODE","COURSE_NUMBER","COURSE_TITLE","CREDITS","DAY_OF_WEEK","START_MINUTE","END_MINUTE","START_TIME","END_TIME","BUILDING_CODE","ROOM_NUMBER","BREAK_ID","BREAK_REASON" FROM break_rows;

