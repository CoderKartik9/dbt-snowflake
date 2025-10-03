SELECT o.order_id,
       c.customer_id,
       c.customer_name,
       p.product_id,
       p.product_name,
       o.quantity,
       o.order_date
FROM dbtschema.orders o
JOIN {{ref("stg_customers")}} c on o.customer_id = c.customer_id 
JOIN dbtschema.products p on o.product_id = p.product_id