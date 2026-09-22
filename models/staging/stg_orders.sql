{{ config(materialized='table') }}
SELECT
    order_id,
    order_date,
    customer_id,
    product_id,
    customer_name,
    product,
    category,
    unit_price,
    quantity,
    status,
    city,
    revenue
FROM {{ source('ecommerce', 'orders') }}
WHERE status = 'completed'