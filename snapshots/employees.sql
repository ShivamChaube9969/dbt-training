{% snapshot employees_snapshot %}
{{ config (target_database = 'QWT_Analytics', target_schema = 'Transforming',
            unique_key = 'EmpID', strategy = 'timestamp', updated_at = 'Hire_Date')
}}
select * from {{ ref('qwt_stg_employees') }}
{% endsnapshot%}