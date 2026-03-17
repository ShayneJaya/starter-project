
  CREATE OR REPLACE FORCE EDITIONABLE VIEW "DEV_USER"."OEHR_PRODUCTS" ("PRODUCT_ID", "LANGUAGE_ID", "PRODUCT_NAME", "CATEGORY_ID", "PRODUCT_DESCRIPTION", "WEIGHT_CLASS", "WARRANTY_PERIOD", "SUPPLIER_ID", "PRODUCT_STATUS", "LIST_PRICE", "MIN_PRICE", "CATALOG_URL") DEFAULT COLLATION "USING_NLS_COMP"  AS
  select i.product_id
,      d.language_id
,      case when d.language_id is not null
            then d.translated_name
            else translate(i.product_name using nchar_cs)
       end    as product_name
,      i.category_id
,      case when d.language_id is not null
            then d.translated_description
            else translate(i.product_description using nchar_cs)
       end    as product_description
,      i.weight_class
,      i.warranty_period
,      i.supplier_id
,      i.product_status
,      i.list_price
,      i.min_price
,      i.catalog_url
from   oehr_product_information  i
,      oehr_product_descriptions d
where  d.product_id  (+) = i.product_id
and    d.language_id (+) = sys_context('USERENV','LANG');

