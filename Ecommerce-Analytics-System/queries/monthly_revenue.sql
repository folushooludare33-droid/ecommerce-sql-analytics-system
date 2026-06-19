SELECT
    strftime('%Y', o.OrderDate) AS Year,
    strftime('%m', o.OrderDate) AS Month,
    SUM(p.Price * oi.Quantity) AS Revenue
FROM Orders o
JOIN OrderItems oi ON o.OrderID = oi.OrderID
JOIN Products p ON oi.ProductID = p.ProductID
GROUP BY Year, Month
ORDER BY Year, Month;