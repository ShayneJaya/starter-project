
  CREATE OR REPLACE FORCE EDITIONABLE VIEW "DEV_USER"."CUSTOMER_ORDER_PRODUCTS" ("ORDER_ID", "ORDER_DATETIME", "ORDER_STATUS", "CUSTOMER_ID", "EMAIL_ADDRESS", "FULL_NAME", "ORDER_TOTAL", "ITEMS") DEFAULT COLLATION "USING_NLS_COMP"  AS
  select o.order_id
,      o.order_datetime
,      o.order_status
,      c.customer_id
,      c.email_address
,      c.full_name
,      sum ( oi.quantity * oi.unit_price ) order_total
,      listagg (p.product_name, ', ' on overflow truncate '...' with count)
         within group ( order by oi.line_item_id ) items
from orders o
join order_items oi
  on o.order_id = oi.order_id
join customers c
  on o.customer_id = c.customer_id
join products p
  on oi.product_id = p.product_id
group by o.order_id
,        o.order_datetime
,        o.order_status
,        c.customer_id
,        c.email_address
,        c.full_name;

