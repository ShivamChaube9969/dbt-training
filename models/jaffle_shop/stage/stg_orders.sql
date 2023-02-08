{{ config (materialized = 'incremental', schema = 'stage', unique_key = 'order_id')}}
select
    id as order_id,
    user_id as customer_id,
    order_date,
    status

from raw.jaffle_shop.orders

{% if is_incremental() %}

where order_date > (select max(order_date) from {{ this }})

{% endif %}