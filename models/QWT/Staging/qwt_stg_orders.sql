{{ config (materialized = 'table', database = 'QWT_Analytics', schema = 'Staging')}}

select 
OrderID ,
OrderDate ,
CustomerID ,
EmployeeID ,
ShipperID ,
Freight 

 from QWT_RAW.QWT_Shop.orders