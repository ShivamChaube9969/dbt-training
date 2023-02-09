{{ config (materialized = 'table', database = 'QWT_Analytics', schema = 'Staging')}}

select
  CustomerID ,
  CompanyName ,
  ContactName ,
  City ,
  Country ,
  DivisionID ,
  Address ,
  Fax ,
  Phone ,
  PostalCode ,
  StateProvince 
from QWT_RAW.QWT_Shop.customers