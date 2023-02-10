{{ config (materialized = 'table', database = 'QWT_Analytics', schema = 'Staging')}}

select 
EmpID,Last_Name,First_Name,Title,Hire_Date,Office,Extension,Reports_To,Year_Salary

 from QWT_RAW.QWT_Shop.employees