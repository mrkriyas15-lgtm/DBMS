USE IMPORTHUB;

CREATE TABLE Seller
(
    SellerID INT PRIMARY KEY,
    SellerName VARCHAR(100),
    ContactNo VARCHAR(15),
    Email VARCHAR(100),
    Address VARCHAR(150)
);

INSERT INTO Seller VALUES
(201, "CHOCO WORLD", "9876100001", "chocoworld@gmail.com", "Chennai"),
(202, "GIFT HUB", "9876100002", "gifthub@gmail.com", "Madurai"),
(203, "STYLE MART", "9876100003", "stylemart@gmail.com", "Coimbatore"),
(204, "ACCESSORY WORLD", "9876100004", "accessoryworld@gmail.com", "Salem"),
(205, "IMPORT ZONE", "9876100005", "importzone@gmail.com", "Trichy");

SELECT * FROM Seller;


CREATE TABLE Inventory
(
    InventoryID INT PRIMARY KEY,
    ProductID INT,
    SellerID INT,
    AvailabilityStatus VARCHAR(20),
    Stock INT,

    FOREIGN KEY (ProductID)
    REFERENCES Product(ProductID),

    FOREIGN KEY (SellerID)
    REFERENCES Seller(SellerID)
);


INSERT INTO Inventory VALUES
(301, 101, 201, "AVAILABLE", 45),
(302, 102, 202, "UNAVAILABLE", 0),
(303, 103, 203, "AVAILABLE", 25),
(304, 104, 204, "AVAILABLE", 20),
(305, 105, 205, "AVAILABLE", 35),
(306, 106, 201, "AVAILABLE", 25),
(307, 107, 202, "UNAVAILABLE", 0),
(309, 109, 204, "AVAILABLE", 25),
(310, 110, 205, "AVAILABLE", 35),
(311, 111, 201, "AVAILABLE", 30),
(312, 112, 202, "AVAILABLE", 25),
(313, 113, 203, "AVAILABLE", 20),
(314, 114, 204, "AVAILABLE", 40),
(315, 115, 205, "AVAILABLE", 35);

SELECT * FROM Inventory;


UPDATE Inventory
SET Stock = 20,
    AvailabilityStatus = "AVAILABLE"
WHERE InventoryID = 307;

SELECT * FROM Inventory
WHERE InventoryID = 307;


UPDATE Inventory
SET Stock = 0,
    AvailabilityStatus = "UNAVAILABLE"
WHERE InventoryID = 311;

SELECT * FROM Inventory
WHERE InventoryID = 311;


UPDATE Inventory
SET Stock = 50,
    AvailabilityStatus = "AVAILABLE"
WHERE InventoryID = 302;

SELECT * FROM Inventory
WHERE InventoryID = 302;


UPDATE Seller
SET ContactNo = "9876543210"
WHERE SellerID = 205;

SELECT * FROM Seller
WHERE SellerID = 205;


DELETE FROM Inventory
WHERE InventoryID = 315;

SELECT * FROM Inventory;


SELECT * FROM Inventory
WHERE AvailabilityStatus = "AVAILABLE";


SELECT * FROM Inventory
WHERE AvailabilityStatus = "UNAVAILABLE";


SELECT COUNT(*) FROM Inventory
WHERE AvailabilityStatus = "AVAILABLE";


SELECT COUNT(*) FROM Inventory
WHERE AvailabilityStatus = "UNAVAILABLE";


SELECT * FROM Inventory
ORDER BY Stock DESC;


SELECT * FROM Inventory;
SELECT * FROM Seller;


DROP TABLE IF EXISTS Inventory;
DROP TABLE IF EXISTS Seller;