
  CREATE OR REPLACE FORCE EDITIONABLE VIEW "DEV_USER"."OEHR_ORDERS_VIEW" ("ORDER_ID", "ORDER_DATE", "ORDER_MODE", "CUSTOMER_ID", "ORDER_STATUS", "ORDER_TOTAL", "SALES_REP_ID", "PROMOTION_ID") DEFAULT COLLATION "USING_NLS_COMP"  AS
  select order_id,
  to_date(to_char(order_date,'DD-MON-YY HH:MI:SS'),'DD-MON-YY HH:MI:SS')    order_date,
order_mode,
customer_id,
order_status,
order_total,
sales_rep_id,
promotion_id
from oehr_orders;

