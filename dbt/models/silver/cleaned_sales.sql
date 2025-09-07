{{ config(materialized='table') }}

select
  id,
  product_id,
  customer_id,
  amount,
  date
from {{ ref('raw_sales') }}
where amount > 0