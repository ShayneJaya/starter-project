
  CREATE OR REPLACE FORCE EDITIONABLE VIEW "DEV_USER"."OEHR_TORONTO_INVENTORY" ("PRODUCT_ID", "PRODUCT_NAME", "QUANTITY_ON_HAND") DEFAULT COLLATION "USING_NLS_COMP"  AS
  select p.product_id
,      p.product_name
,      i.quantity_on_hand
from   oehr_inventories i
,      oehr_warehouses  w
,      oehr_products    p
where  p.product_id = i.product_id
and    i.warehouse_id = w.warehouse_id
and    w.warehouse_name = 'Toronto';

