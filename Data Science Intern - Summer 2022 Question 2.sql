-- Question 1 : How many orders were shipped by Speedy Express in total?--
-- Answer: 54 --

SELECT COUNT(*) as total_shipment_speedexpress
FROM Shippers as s
LEFT JOIN Orders as o
ON s.ShipperID = o.ShipperID
WHERE ShipperName = "Speedy Express";


-- Question 2 : What is the last name of the employee with the most orders?--
-- Answer: Peacock --

SELECT e.LastName, COUNT(DISTINCT o.OrderID) as num_of_orders
FROM Employees as e
LEFT JOIN Orders as o
ON e.EmployeeID = o.EmployeeID
GROUP BY e.EmployeeID
ORDER BY num_of_orders DESC
LIMIT 1;


-- Question 3 : What product was ordered the most by customers in Germany?--
-- Answer: Boston Crab Meat  - 160 --

SELECT p.ProductName, od.OrderID, SUM(od.Quantity) as Total_Quantity, o.CustomerID, c.Country
FROM Products as p
LEFT JOIN OrderDetails as od
ON p.ProductID = od.ProductID
LEFT JOIN Orders as o
ON od.OrderID = o.OrderID
LEFT JOIN Customers as c
ON o.CustomerID = c.CustomerID
WHERE c.Country = "Germany"
GROUP BY p.ProductName
ORDER BY Total_Quantity DESC
LIMIT 1;
