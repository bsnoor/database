select p.ProductID , productName ,
 (round(sum(o.Quantity),2))  as totalQuantity,
 concat('$',(round(sum(o.UnitPrice*o.Quantity),2))) as totalprice , 
 concat('$',(round((sum(o.UnitPrice*o.Quantity) / sum(o.Quantity)),2))) as WeightedAvgPrice , 
concat ('$',(round(avg(o.unitprice),2))) as Avgprice ,
concat('$',(round(p.UnitPrice,2)))  as currentprice 
from products as p join `order details` as o on p.ProductID =o.ProductID

 order by WeightedAvgPrice , totalprice ,Currentprice
