select
  date_trunc('month', date) as month,
  sum(amount) as monthly_sales
from {{ ref('cleaned_sales') }}
group by 1
order by 1