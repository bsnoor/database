select   p.ProductName , c.companyname , year(orderdate) as 'orderyear' ,
case
when (quarter(orderdate)) = 1 then round((od.UnitPrice*od.Quantity),0) else 0  end as qrt1 ,
case 
when (quarter(orderdate)) = 2 then round((od.UnitPrice*od.Quantity),0) else 0  end as qrt2 ,
  case 
  when (quarter(orderdate)) = 3 then round((od.UnitPrice*od.Quantity),0) else 0  end as qrt3 ,
   case 
   when (quarter(orderdate)) = 4 then round((od.UnitPrice*od.Quantity),0) else 0  end as qrt4 

 
from products as p join `order details` as od on
p.ProductID= od.productID join orders as o on o.OrderID = od.orderId join customers as c on c.CustomerID= o.CustomerID
order by ProductName asc , c.companyname 
