select  distinct e.employeeID , FirstName ,LastName , Homephone , date_add("1998-05-06 00:00:00", interval 7 day) as 'insulation ends'
from employees as e join orders as o on  e.EmployeeID=o.EmployeeID
 where   e.EmployeeID <> 8 and o.OrderDate between "1998-05-06" and "1998-05-08" 
order by LastName
