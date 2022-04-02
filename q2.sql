select S.CompanyName , s.Phone , case when min(o.requiredDate)<curdate() then
'pass' 
else min(curdate()-o.requiredDate) end as 'days left'
from orders as o join shippers as s 
on o.shipvia=s.ShipperID 
where o.ShippedDate is null and date_sub(o.requiredDate, interval 7 day) <= curdate()
group by s.ShipperID
