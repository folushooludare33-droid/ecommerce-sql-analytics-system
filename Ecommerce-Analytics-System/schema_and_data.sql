BEGIN TRANSACTION;
DROP TABLE IF EXISTS "Categories";
CREATE TABLE Categories (
    category_id INTEGER PRIMARY KEY AUTOINCREMENT,
    category_name TEXT
);
DROP TABLE IF EXISTS "Customers";
CREATE TABLE Customers (
    CustomerID INTEGER PRIMARY KEY AUTOINCREMENT,
    FirstName TEXT,
    LastName TEXT,
    Email TEXT,
    JoinDate DATE
);
DROP TABLE IF EXISTS "OrderItems";
CREATE TABLE OrderItems (
    OrderItemID INTEGER PRIMARY KEY AUTOINCREMENT,
    OrderID INTEGER,
    ProductID INTEGER,
    Quantity INTEGER,
    FOREIGN KEY (OrderID)
        REFERENCES Orders(OrderID),
    FOREIGN KEY (ProductID)
        REFERENCES Products(ProductID)
);
DROP TABLE IF EXISTS "Orders";
CREATE TABLE Orders (
    OrderID INTEGER PRIMARY KEY AUTOINCREMENT,
    CustomerID INTEGER,
    OrderDate DATE,
    FOREIGN KEY (CustomerID)
        REFERENCES Customers(CustomerID)
);
DROP TABLE IF EXISTS "Products";
CREATE TABLE Products (
    ProductID INTEGER PRIMARY KEY AUTOINCREMENT,
    ProductName TEXT,
    CategoryID INTEGER,
    Price REAL
);
INSERT INTO "Categories" ("category_id","category_name") VALUES (1,'Electronics'),
 (2,'Fashion'),
 (3,'Home'),
 (4,'Books'),
 (5,'Beauty'),
 (6,'Sports'),
 (7,'Toys'),
 (8,'Automotive'),
 (9,'Groceries'),
 (10,'Furniture');
INSERT INTO "OrderItems" ("OrderItemID","OrderID","ProductID","Quantity") VALUES (1,1,1,1),
 (2,1,2,2),
 (3,1,4,1),
 (4,2,3,3),
 (5,2,5,1),
 (6,3,2,1),
 (7,3,6,2),
 (8,4,1,1),
 (9,4,7,1),
 (10,4,8,2),
 (11,5,3,2),
 (12,5,9,1),
 (13,6,2,2),
 (14,6,4,1),
 (15,7,6,1),
 (16,8,1,1),
 (17,8,5,2),
 (18,8,10,1),
 (19,9,7,1),
 (20,9,8,1),
 (21,10,3,2),
 (22,10,4,1),
 (23,11,9,2),
 (24,12,1,1),
 (25,12,2,1),
 (26,12,3,1),
 (27,13,5,1),
 (28,14,6,2),
 (29,14,7,1),
 (30,15,8,1),
 (31,15,9,1),
 (32,1,10,2),
 (33,2,1,1),
 (34,3,3,1);
INSERT INTO "Orders" ("OrderID","CustomerID","OrderDate") VALUES (1,1,'2025-01-01'),
 (2,1,'2025-01-10'),
 (3,1,'2025-02-05'),
 (4,1,'2025-03-12'),
 (5,2,'2025-01-15'),
 (6,2,'2025-02-20'),
 (7,3,'2025-02-01'),
 (8,4,'2025-02-02'),
 (9,4,'2025-02-18'),
 (10,4,'2025-03-01'),
 (11,5,'2025-01-25'),
 (12,6,'2025-02-10'),
 (13,6,'2025-03-15'),
 (14,7,'2025-03-05'),
 (15,8,'2025-01-20'),
 (16,8,'2025-02-25'),
 (17,9,'2025-03-10'),
 (18,10,'2025-03-15'),
 (19,10,'2025-04-01'),
 (20,11,'2025-01-08'),
 (21,12,'2025-02-14'),
 (22,12,'2025-03-18'),
 (23,13,'2025-03-22'),
 (24,14,'2025-04-05'),
 (25,15,'2025-04-10');
DROP VIEW IF EXISTS "GetCustomerRevenue";
CREATE VIEW GetCustomerRevenue AS
SELECT
    c.CustomerID,
    c.FirstName,
    SUM(p.Price * oi.Quantity) AS Revenue
FROM Customers c
JOIN Orders o ON c.CustomerID = o.CustomerID
JOIN OrderItems oi ON o.OrderID = oi.OrderID
JOIN Products p ON oi.ProductID = p.ProductID
GROUP BY c.CustomerID, c.FirstName;
DROP VIEW IF EXISTS "GetProductRevenue";
CREATE VIEW GetProductRevenue AS
SELECT
    p.ProductName,
    SUM(p.Price * oi.Quantity) AS Revenue
FROM Products p
JOIN OrderItems oi ON p.ProductID = oi.ProductID
GROUP BY p.ProductName;
COMMIT;
