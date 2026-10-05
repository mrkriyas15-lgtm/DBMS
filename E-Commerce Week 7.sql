USE IMPORTHUB;

SELECT * FROM Category
WHERE CategoryName = "CHOCOLATES";

SELECT * FROM Product
WHERE ProductId = 101;

SELECT * FROM Inventory
WHERE InventoryID = 307;

SELECT * FROM Seller
WHERE SellerName = "CHOCO WORLD";

SELECT * FROM Orders
WHERE CustomerName = "RIYAS";

SELECT * FROM Order_Details
WHERE UnitPrice = 450;

SELECT * FROM Review
WHERE ReviewId = 705;

SELECT * FROM Rating
WHERE Rating = 5;

SELECT  * FROM Payment
WHERE PaymentStatus = 'FAILED';
--------------
SELECT DISTINCT(Category) FROM Product
ORDER BY Category;

SELECT DISTINCT(STOCK) FROM Inventory
ORDER BY Stock DESC;

SELECT DISTINCT(SellerName) FROM SELLER
ORDER BY SellerName;

SELECT DISTINCT(CustomerName) FROM ORDERS
ORDER BY CustomerName;

SELECT DISTINCT(UnitPrice) FROM Order_Details
ORDER BY UnitPrice;


SELECT DISTINCT(PaymentDate) from payment
Order by PaymentDate;

SELECT DISTINCT(ReviewID) FROM REVIEW
ORDER BY ReviewID;

SELECT DISTINCT(RATING) FROM RATING
ORDER BY Rating;