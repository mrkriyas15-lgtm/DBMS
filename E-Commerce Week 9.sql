USE IMPORTHUB;


SELECT COUNT(*) AS TotalProducts
FROM Product;


SELECT SUM(TotalAmt) AS TotalSales
FROM Orders;


SELECT AVG(TotalAmt) AS AverageSales
FROM Orders;


SELECT MIN(TotalAmt) AS MinimumSales,
       MAX(TotalAmt) AS MaximumSales
FROM Orders;


SELECT CustomerName,
       Qty AS ProductQuantity,
       TotalAmt,
       OrderStatus
FROM Orders;


SELECT CustomerName,
       SUM(TotalAmt) AS PurchaseAmount
FROM Orders
GROUP BY CustomerName
ORDER BY PurchaseAmount DESC
LIMIT 5;


SELECT Product.ProductName,
       SUM(Order_Details.Qty) AS TotalQuantitySold
FROM Product
INNER JOIN Order_Details
ON Product.ProductID = Order_Details.ProductID
GROUP BY Product.ProductName
ORDER BY TotalQuantitySold DESC;


SELECT Category.CategoryName,
       SUM(Order_Details.Qty * Order_Details.UnitPrice) AS CategorySales
FROM Category
INNER JOIN Product
ON Category.Category = Product.Category
INNER JOIN Order_Details
ON Product.ProductID = Order_Details.ProductID
GROUP BY Category.CategoryName
ORDER BY CategorySales DESC;


SELECT SUM(Qty) AS TotalQuantitySold
FROM Order_Details;


SELECT Product.ProductName,
       SUM(Order_Details.Qty * Order_Details.UnitPrice) AS SalesAmount
FROM Product
INNER JOIN Order_Details
ON Product.ProductID = Order_Details.ProductID
GROUP BY Product.ProductName
ORDER BY SalesAmount DESC;