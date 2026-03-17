
  CREATE OR REPLACE FORCE EDITIONABLE VIEW "DEV_USER"."STORE_ORDERS_STATUS" ("STORE_NAME", "ADDRESS", "LATITUDE", "LONGITUDE", "ORDER_STATUS", "ORDER_COUNT", "TOTAL_SALES") DEFAULT COLLATION "USING_NLS_COMP"  AS
  select s.store_name
,      coalesce ( s.web_address, s.physical_address ) address
,      s.latitude
,      s.longitude
,      o.order_status
,      count ( distinct o.order_id ) order_count
,      sum ( oi.quantity * oi.unit_price ) total_sales
from stores s
join orders o
  on s.store_id = o.store_id
join order_items oi
  on o.order_id = oi.order_id
group by s.store_name, coalesce ( s.web_address, s.physical_address ), s.latitude, s.longitude, o.order_status;

