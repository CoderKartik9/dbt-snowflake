-- Test to check if there are no orders from today

select count(*) as num_orders_today 
from {{ref('stg_orders_cust_products')}}
where order_date = CURRENT_DATE()
having count(*) > 0

select count(*) as abc
from {{ref('table_model')}};