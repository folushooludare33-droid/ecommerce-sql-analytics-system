WITH CustomerRevenue AS (
    SELECT
        c.CustomerID,
        c.FirstName,
        SUM(p.Price * oi.Quantity) AS TotalRevenue
    FROM Customers c
    JOIN Orders o ON c.CustomerID = o.CustomerID
    JOIN OrderItems oi ON o.OrderID = oi.OrderID
    JOIN Products p ON oi.ProductID = p.ProductID
    GROUP BY c.CustomerID, c.FirstName
)

SELECT *,
       RANK() OVER (ORDER BY TotalRevenue DESC) AS RevenueRank,
       NTILE(10) OVER (ORDER BY TotalRevenue DESC) AS Bucket
FROM CustomerRevenue;