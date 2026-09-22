{{ config(
    materialized='incremental',
    unique_key='order_id',
    incremental_strategy='delete+insert'
) }}
SELECT
    order_id,
    order_date,
    customer_id,
    customer_name,
    product_id,
    product,
    category,
    unit_price,
    quantity,
    status,
    city,
    revenue

FROM {{ ref('stg_orders') }}

{% if is_incremental() %}

WHERE order_date > (
    SELECT MAX(order_date)
    FROM {{ this }}
)

{% endif %}