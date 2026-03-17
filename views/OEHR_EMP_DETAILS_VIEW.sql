
  CREATE OR REPLACE FORCE EDITIONABLE VIEW "DEV_USER"."OEHR_EMP_DETAILS_VIEW" ("EMPLOYEE_ID", "JOB_ID", "MANAGER_ID", "DEPARTMENT_ID", "LOCATION_ID", "COUNTRY_ID", "FIRST_NAME", "LAST_NAME", "SALARY", "COMMISSION_PCT", "DEPARTMENT_NAME", "JOB_TITLE", "CITY", "STATE_PROVINCE", "COUNTRY_NAME", "REGION_NAME") DEFAULT COLLATION "USING_NLS_COMP"  AS
  select
  e.employee_id,
  e.job_id,
  e.manager_id,
  e.department_id,
  d.location_id,
  l.country_id,
  e.first_name,
  e.last_name,
  e.salary,
  e.commission_pct,
  d.department_name,
  j.job_title,
  l.city,
  l.state_province,
  c.country_name,
  r.region_name
from
  oehr_employees e,
  oehr_departments d,
  oehr_jobs j,
  oehr_locations l,
  oehr_countries c,
  oehr_regions r
where e.department_id = d.department_id
  and d.location_id = l.location_id
  and l.country_id = c.country_id
  and c.region_id = r.region_id
  and j.job_id = e.job_id
with read only;

