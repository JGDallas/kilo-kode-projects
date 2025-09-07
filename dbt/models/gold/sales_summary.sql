{{ config(materialized='table') }}

select
  product_id,
  sum(amount) as total_sales,
  count(*) as num_transactions
from {{ ref('cleaned_sales') }}
group by product_id