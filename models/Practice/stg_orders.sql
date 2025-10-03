select customer_id, 
       sum(quantity * total_price) as revenue_per_customer 
from dbtschema.orders
where order_date between '2021-01-01' and '2022-12-31' 
group by customer_id
order by customer_id

