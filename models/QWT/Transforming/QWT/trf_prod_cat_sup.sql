{{ config(materialized="table", database="QWT_Analytics", schema="Transforming") }}

with
    products as (select * from {{ ref("qwt_stg_products") }}),

    categories as (select * from {{ ref("Categories") }}),

    suppliers as (select * from {{ ref("qwt_stg_suppliers") }}),

    final as (

        select
            products.productid,
            products.productname,
            products.supplierid,
            products.categoryid,
            products.quantityperunit,
            products.unitcost,
            products.unitprice,
            products.unitsinstock,
            products.unitsonorder,
            categories.categoryname,
            suppliers.companyname


        from products

        left join categories using (categoryid)

        left join suppliers using (supplierid)

    )

select *
from final