{{ config (materialized = 'table', database = 'QWT_Analytics', schema = 'Staging')}}

select 
    ProductID ,
    ProductName ,
    SupplierID ,
    CategoryID ,
    QuantityPerUnit ,
    UnitCost ,
    UnitPrice ,
    UnitsInStock ,
    UnitsOnOrder 

 from QWT_RAW.QWT_Shop.products