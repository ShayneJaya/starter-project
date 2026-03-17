
  CREATE OR REPLACE FORCE EDITIONABLE VIEW "DEV_USER"."UNIVERSITYCF_V_OFFERING_MEETINGS" ("MEETING_ID", "OFFERING_ID", "COURSE_CODE", "SECTION_CODE", "TITLE", "CREDITS", "DAY_OF_WEEK", "START_MINUTE", "END_MINUTE", "BUILDING_ID", "BUILDING_CODE", "ROOM_NUMBER") DEFAULT COLLATION "USING_NLS_COMP"  AS
  SELECT
  om.meeting_id,
  om.offering_id,
  vom.course_code,
  vom.section_code,
  vom.title,
  vom.credits,
  om.day_of_week,
  om.start_minute,
  om.end_minute,
  b.building_id,
  b.code AS building_code,
  r.room_number
FROM UniversityCF_offering_meetings om
JOIN UniversityCF_v_offering_label vom ON vom.offering_id = om.offering_id
LEFT JOIN UniversityCF_rooms r         ON r.room_id = om.room_id
LEFT JOIN UniversityCF_buildings b     ON b.building_id = r.building_id;

