SELECT
    p.ProductName,
    SUM(p.Price * oi.Quantity) AS Revenue,
    RANK() OVER (ORDER BY SUM(p.Price * oi.Quantity) DESC) AS ProductRank
FROM Products p
JOIN OrderItems oi ON p.ProductID = oi.ProductID
GROUP BY p.ProductName;