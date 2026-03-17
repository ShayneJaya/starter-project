
  CREATE OR REPLACE FORCE EDITIONABLE VIEW "DEV_USER"."OEHR_ACCOUNT_MANAGERS" ("ACCT_MGR", "REGION", "COUNTRY", "PROVINCE", "NUM_CUSTOMERS") DEFAULT COLLATION "USING_NLS_COMP"  AS
  select    c.account_mgr_id    acct_mgr,
    cr.region_id      region,
    c.country_id                  country,
    c.state_province          province,
    count(*)      num_customers
from    oehr_customers c, oehr_countries cr
where   c.country_id = cr.country_id
group by rollup (  c.account_mgr_id
                 , cr.region_id
                 , c.country_id
                 , c.state_province
                );

