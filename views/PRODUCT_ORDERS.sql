
  CREATE OR REPLACE FORCE EDITIONABLE VIEW "DEV_USER"."PRODUCT_ORDERS" ("PRODUCT_NAME", "ORDER_STATUS", "TOTAL_SALES", "ORDER_COUNT") DEFAULT COLLATION "USING_NLS_COMP"  AS
  select p.product_name
,      o.order_status
,      sum ( oi.quantity * oi.unit_price ) total_sales
,      count (*) order_count
from orders o
join order_items oi
  on o.order_id = oi.order_id
join customers c
  on o.customer_id = c.customer_id
join products p
  on oi.product_id = p.product_id
group by p.product_name
,        o.order_status;

