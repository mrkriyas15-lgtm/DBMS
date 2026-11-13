USE IMPORTHUB;

SELECT orders.OrderID,
	 Order_Details.ProductID,
     Order_Details.Qty
FROM Orders
INNER JOIN   Order_Details
ON orders.OrderID =  Order_Details.OrderID;

SELECT orders.OrderID,
	 Order_Details.ProductID,
     Order_Details.Qty
FROM Orders
LEFT JOIN   Order_Details
ON orders.OrderID =  Order_Details.OrderID;

SELECT orders.OrderID,
	 Order_Details.ProductID,
     Order_Details.Qty
FROM Orders
RIGHT JOIN   Order_Details
ON orders.OrderID =  Order_Details.OrderID;

SELECT Orders.OrderID,TotalAmt,
	Payment.PaymentMode,
	Payment.PaymentAmount
FROM Orders
INNER JOIN Payment
ON Orders.OrderID = Payment.OrderID;

SELECT Product.ProductName,
	Category.CategoryName
FROM Product
INNER JOIN Category
ON Product.Category = Category.Category;


SELECT Orders.OrderID,
Product.ProductName,
Order_Details.Qty,
Payment.PaymentStatus
FROM Orders
INNER JOIN Order_Details
ON Orders.OrderID = Order_Details.OrderID
INNER JOIN Product
ON Order_Details.ProductID = Product.ProductID
LEFT JOIN Payment
ON Orders.OrderID = Payment.OrderID;