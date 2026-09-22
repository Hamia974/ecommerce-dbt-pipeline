SELECT
    customer_id,
    customer_name,
    COUNT(order_id) AS total_orders,
    SUM(revenue) AS total_revenue,
    AVG(revenue) AS average_order_value
FROM {{ ref('stg_orders') }}
GROUP BY
    customer_id,
    customer_name