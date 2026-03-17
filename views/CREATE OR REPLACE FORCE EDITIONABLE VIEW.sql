CREATE OR REPLACE FORCE EDITIONABLE VIEW "DEV_USER"."PRODUCT_REVIEWS" ("PRODUCT_NAME", "RATING", "AVG_RATING", "REVIEW") AS 
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

   COMMENT ON COLUMN "DEV_USER"."PRODUCT_REVIEWS"."PRODUCT_NAME" IS 'What this product is called';
   COMMENT ON COLUMN "DEV_USER"."PRODUCT_REVIEWS"."RATING" IS 'The review score the customer has placed. Range is 1-10';
   COMMENT ON COLUMN "DEV_USER"."PRODUCT_REVIEWS"."AVG_RATING" IS 'The mean of the review scores for this product';
   COMMENT ON COLUMN "DEV_USER"."PRODUCT_REVIEWS"."REVIEW" IS 'The text of the review';
   COMMENT ON TABLE "DEV_USER"."PRODUCT_REVIEWS"  IS 'A relational view of the reviews stored in the JSON for each product';