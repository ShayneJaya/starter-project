
  CREATE OR REPLACE FORCE EDITIONABLE VIEW "DEV_USER"."OEHR_CUSTOMERS_VIEW" ("CUSTOMER_ID", "CUST_FIRST_NAME", "CUST_LAST_NAME", "STREET_ADDRESS", "POSTAL_CODE", "CITY", "STATE_PROVINCE", "COUNTRY_ID", "COUNTRY_NAME", "REGION_ID", "NLS_LANGUAGE", "NLS_TERRITORY", "CREDIT_LIMIT", "CUST_EMAIL", "PHONE_NUMBER", "ACCOUNT_MGR_ID") DEFAULT COLLATION "USING_NLS_COMP"  AS
  select
  c.customer_id,
  c.cust_first_name,
  c.cust_last_name,
  c.street_address,
  c.postal_code,
  c.city,
  c.state_province,
  co.country_id,
  co.country_name,
  co.region_id,
  c.nls_language,
  c.nls_territory,
  c.credit_limit,
  c.cust_email,
  c.phone_number,
  c.account_mgr_id
from
  oehr_countries co,
  oehr_customers c
where
  c.country_id = co.country_id(+);

