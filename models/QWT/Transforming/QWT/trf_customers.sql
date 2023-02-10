{{ config (materialized = 'table', database = 'QWT_Analytics', schema = 'Transforming')}}

with customers as (

select * from {{ ref('qwt_stg_customers') }}

),

divisions as (

select * from {{ ref('divisions') }}

),

final as (

    select
        customers.CustomerID ,
        customers.CompanyName ,
        customers.ContactName ,
        customers.City ,
        customers.Country ,
        customers.DivisionID ,
        customers.Address ,
        customers.Fax ,
        customers.Phone ,
        customers.PostalCode ,
        customers.StateProvince,
        divisions.DivisionName


    from customers

    left join divisions using (DivisionID)

)

select * from final