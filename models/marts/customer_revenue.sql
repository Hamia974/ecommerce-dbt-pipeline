SELECT
    customer_id,
    customer_name,
    total_orders,
    total_revenue,
    average_order_value
FROM {{ ref('int_customer_orders') }}