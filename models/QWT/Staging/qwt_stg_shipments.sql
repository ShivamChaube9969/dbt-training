{{ config (materialized = 'table', database = 'QWT_Analytics', schema = 'Staging')}}

select
    OrderID ,
    LineNo ,
    ShipperID ,
    CustomerID ,
    ProductID ,
    EmployeeID ,
    ShipmentDate 
from QWT_RAW.QWT_Shop.shipments