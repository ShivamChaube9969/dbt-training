{{ config (materialized = 'view', database = 'QWT_Analytics', schema = 'Reporting')}}

select 
*

 from {{ ref('employees_snapshot') }}