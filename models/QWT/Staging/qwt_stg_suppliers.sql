{{ config (materialized = 'table', database = 'QWT_Analytics', schema = 'Staging')}}

select 
*

 from QWT_RAW.QWT_Shop.suppliers