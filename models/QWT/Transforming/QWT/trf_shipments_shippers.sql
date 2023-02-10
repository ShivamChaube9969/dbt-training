{{ config (materialized = 'table', database = 'QWT_Analytics', schema = 'Transforming')}}

with shipments as (

select * from {{ ref('qwt_stg_shipments') }}

),

shippers as (

select * from {{ ref('shippers') }}

),

final as (

    select
        shipments.OrderID ,
        shipments.LineNo ,
        shipments.ShipperID ,
        shipments.CustomerID ,
        shipments.ProductID ,
        shipments.EmployeeID ,
        shipments.ShipmentDate,
        shippers.CompanyName


    from shipments

    left join shippers using (ShipperID)

)

select * from final