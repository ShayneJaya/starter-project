
  CREATE OR REPLACE FORCE EDITIONABLE VIEW "DEV_USER"."OEHR_PRODUCT_PRICES" ("CATEGORY_ID", "#_OF_PRODUCTS", "LOW_PRICE", "HIGH_PRICE") DEFAULT COLLATION "USING_NLS_COMP"  AS
  select category_id
,      count(*)        as "#_OF_PRODUCTS"
,      min(list_price) as low_price
,      max(list_price) as high_price
from   oehr_product_information
group by category_id;

