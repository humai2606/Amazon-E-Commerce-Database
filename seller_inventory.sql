-- =========================================
-- AMAZON E-COMMERCE DATABASE
-- SELLER AND INVENTORY MANAGEMENT
-- =========================================

-- 1. CREATE SELLER TABLE

CREATE TABLE Seller (
    Seller_ID NUMBER PRIMARY KEY,
    Seller_Name VARCHAR2(50) NOT NULL,
    Business_Name VARCHAR2(100) NOT NULL,
    Email VARCHAR2(50) UNIQUE,
    Phone_Number VARCHAR2(10) UNIQUE,
    GST_Number VARCHAR2(20) UNIQUE,
    Address VARCHAR2(100),
    Rating NUMBER(2,1)
);


-- 2. INSERT SELLER DATA

INSERT INTO Seller VALUES
(201, 'Tech World', 'Tech World Electronics', 'techworld@gmail.com', '9876543210', 'GST201', 'Chennai', 4.5);

INSERT INTO Seller VALUES
(202, 'Fashion Hub', 'Fashion Hub Store', 'fashionhub@gmail.com', '9876543211', 'GST202', 'Bangalore', 4.2);

INSERT INTO Seller VALUES
(203, 'Book House', 'Book House Publishers', 'bookhouse@gmail.com', '9876543212', 'GST203', 'Chennai', 4.6);

INSERT INTO Seller VALUES
(204, 'Home Needs', 'Home Needs Appliances', 'homeneeds@gmail.com', '9876543213', 'GST204', 'Coimbatore', 4.3);

INSERT INTO Seller VALUES
(205, 'Beauty Care', 'Beauty Care Store', 'beautycare@gmail.com', '9876543214', 'GST205', 'Madurai', 4.4);

INSERT INTO Seller VALUES
(206, 'Sports World', 'Sports World Store', 'sportsworld@gmail.com', '9876543215', 'GST206', 'Chennai', 4.1);

INSERT INTO Seller VALUES
(207, 'Toy Zone', 'Toy Zone Store', 'toyzone@gmail.com', '9876543216', 'GST207', 'Salem', 4.0);

INSERT INTO Seller VALUES
(208, 'Daily Needs', 'Daily Needs Store', 'dailyneeds@gmail.com', '9876543217', 'GST208', 'Trichy', 4.3);

INSERT INTO Seller VALUES
(209, 'Footwear Point', 'Footwear Point Store', 'footwearpoint@gmail.com', '9876543218', 'GST209', 'Chennai', 4.2);

INSERT INTO Seller VALUES
(210, 'Furniture World', 'Furniture World Store', 'furnitureworld@gmail.com', '9876543219', 'GST210', 'Coimbatore', 4.5);

COMMIT;


-- 3. ADD SELLER_ID TO PRODUCT TABLE

ALTER TABLE Product
ADD Seller_ID NUMBER;


-- 4. CREATE FOREIGN KEY BETWEEN PRODUCT AND SELLER

ALTER TABLE Product
ADD CONSTRAINT fk_product_seller
FOREIGN KEY (Seller_ID)
REFERENCES Seller(Seller_ID);


-- 5. ASSIGN SELLERS TO PRODUCTS

UPDATE Product SET Seller_ID = 201 WHERE Product_ID IN (101,102,103,104);

UPDATE Product SET Seller_ID = 202 WHERE Product_ID IN (105,106);

UPDATE Product SET Seller_ID = 203 WHERE Product_ID IN (107,108);

UPDATE Product SET Seller_ID = 204 WHERE Product_ID IN (109,110);

COMMIT;


-- 6. CREATE WAREHOUSE TABLE

CREATE TABLE Warehouse (
    Warehouse_ID NUMBER PRIMARY KEY,
    Warehouse_Name VARCHAR2(100),
    Location VARCHAR2(100),
    Capacity NUMBER
);


-- 7. INSERT WAREHOUSE DATA

INSERT INTO Warehouse VALUES
(301, 'Chennai Warehouse', 'Chennai', 1000);

INSERT INTO Warehouse VALUES
(302, 'Bangalore Warehouse', 'Bangalore', 1500);

INSERT INTO Warehouse VALUES
(303, 'Coimbatore Warehouse', 'Coimbatore', 1200);

INSERT INTO Warehouse VALUES
(304, 'Madurai Warehouse', 'Madurai', 800);

INSERT INTO Warehouse VALUES
(305, 'Salem Warehouse', 'Salem', 900);

INSERT INTO Warehouse VALUES
(306, 'Trichy Warehouse', 'Trichy', 1000);

INSERT INTO Warehouse VALUES
(307, 'Chennai North Warehouse', 'Chennai', 1300);

INSERT INTO Warehouse VALUES
(308, 'Chennai South Warehouse', 'Chennai', 1100);

INSERT INTO Warehouse VALUES
(309, 'Erode Warehouse', 'Erode', 700);

INSERT INTO Warehouse VALUES
(310, 'Vellore Warehouse', 'Vellore', 850);

COMMIT;


-- 8. CREATE INVENTORY TABLE

CREATE TABLE Inventory (
    Inventory_ID NUMBER PRIMARY KEY,
    Product_ID NUMBER,
    Warehouse_ID NUMBER,
    Available_Stock NUMBER,
    Last_Updated DATE,

    CONSTRAINT fk_inventory_product
    FOREIGN KEY (Product_ID)
    REFERENCES Product(Product_ID),

    CONSTRAINT fk_inventory_warehouse
    FOREIGN KEY (Warehouse_ID)
    REFERENCES Warehouse(Warehouse_ID)
);


-- 9. INSERT INVENTORY DATA

INSERT INTO Inventory VALUES
(401, 101, 301, 10, SYSDATE);

INSERT INTO Inventory VALUES
(402, 102, 302, 20, SYSDATE);

INSERT INTO Inventory VALUES
(403, 103, 301, 30, SYSDATE);

INSERT INTO Inventory VALUES
(404, 104, 303, 15, SYSDATE);

INSERT INTO Inventory VALUES
(405, 105, 304, 50, SYSDATE);

INSERT INTO Inventory VALUES
(406, 106, 305, 40, SYSDATE);

INSERT INTO Inventory VALUES
(407, 107, 306, 25, SYSDATE);

INSERT INTO Inventory VALUES
(408, 108, 307, 0, SYSDATE);

INSERT INTO Inventory VALUES
(409, 109, 308, 12, SYSDATE);

INSERT INTO Inventory VALUES
(410, 110, 309, 0, SYSDATE);

COMMIT;


-- =========================================
-- 10. SELLER PRODUCT INFORMATION
-- =========================================

SELECT
    s.Seller_ID,
    s.Seller_Name,
    p.Product_ID,
    p.Product_Name,
    i.Available_Stock
FROM Seller s
JOIN Product p
ON s.Seller_ID = p.Seller_ID
JOIN Inventory i
ON p.Product_ID = i.Product_ID;


-- =========================================
-- 11. AVAILABLE PRODUCTS
-- =========================================

SELECT
    p.Product_ID,
    p.Product_Name,
    i.Available_Stock
FROM Product p
JOIN Inventory i
ON p.Product_ID = i.Product_ID
WHERE i.Available_Stock > 0;


-- =========================================
-- 12. UNAVAILABLE PRODUCTS
-- =========================================

SELECT
    p.Product_ID,
    p.Product_Name,
    i.Available_Stock
FROM Product p
JOIN Inventory i
ON p.Product_ID = i.Product_ID
WHERE i.Available_Stock = 0;


-- =========================================
-- 13. COMPLETE INVENTORY REPORT
-- =========================================

SELECT
    p.Product_ID,
    p.Product_Name,
    s.Seller_Name,
    i.Available_Stock,
    i.Warehouse_ID,
    i.Last_Updated
FROM Product p
JOIN Seller s
ON p.Seller_ID = s.Seller_ID
JOIN Inventory i
ON p.Product_ID = i.Product_ID;


-- =========================================
-- 14. AVAILABLE / UNAVAILABLE PRODUCT COUNT
-- =========================================

SELECT 'AVAILABLE' AS STOCK_STATUS,
       COUNT(*) AS PRODUCT_COUNT
FROM Inventory
WHERE Available_Stock > 0

UNION ALL

SELECT 'UNAVAILABLE' AS STOCK_STATUS,
       COUNT(*) AS PRODUCT_COUNT
FROM Inventory
WHERE Available_Stock = 0;


-- =========================================
-- 15. TOTAL STOCK BY SELLER
-- =========================================

SELECT
    s.Seller_ID,
    s.Seller_Name,
    SUM(i.Available_Stock) AS Total_Stock
FROM Seller s
JOIN Product p
ON s.Seller_ID = p.Seller_ID
JOIN Inventory i
ON p.Product_ID = i.Product_ID
GROUP BY s.Seller_ID, s.Seller_Name;


-- =========================================
-- 16. PRODUCTS WITH ZERO STOCK
-- =========================================

SELECT
    p.Product_ID,
    p.Product_Name,
    i.Available_Stock
FROM Product p
JOIN Inventory i
ON p.Product_ID = i.Product_ID
WHERE i.Available_Stock = 0;