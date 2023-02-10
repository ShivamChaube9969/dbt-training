{% snapshot orders_snapshot %}
{{ config (target_database = 'Analytics', target_schema = 'Snapshots',
            unique_key = 'id', strategy = 'timestamp', updated_at = 'order_date')
}}
select * from RAW.JAFFLE_SHOP.ORDERS
{% endsnapshot%}