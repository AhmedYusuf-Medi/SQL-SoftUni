--Task 1
SELECT order.ProductName,
       order.OrderDate,
       DATEADD(DAY, 3, order.OrderDate) AS [Pay Due],
       DATEADD(MONTH, 1, order.OrderDate) AS [Deliver Due]
FROM Orders AS order;