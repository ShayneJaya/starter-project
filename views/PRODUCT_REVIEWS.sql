
  CREATE OR REPLACE FORCE EDITIONABLE VIEW "DEV_USER"."PRODUCT_REVIEWS" ("PRODUCT_NAME", "RATING", "AVG_RATING", "REVIEW") DEFAULT COLLATION "USING_NLS_COMP"  AS
  select p.product_name
,      r.rating
,      round (avg (r.rating) over (partition by product_name), 2) avg_rating
,      r.review
from products p
,    json_table
       (p.product_details, '$'
        columns (nested path '$.reviews[*]'
                 columns (  rating number path '$.rating'
                          , review varchar2(4000) path '$.review'
                         )
                )
       ) r;

