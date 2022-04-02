select distinct  productid  , productname , s.supplierID , companyname ,
phone , (100-UnitsInStock) as 'to oreder'
from  products as p join suppliers as s  on p.SupplierID =s.SupplierID
where UnitsInStock <10 and UnitsOnOrder <10 
