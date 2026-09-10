Enter user-name: System
Enter password:
Last Successful login time: Thu Sep 10 2026 19:57:11 +05:30

Connected to:
Oracle Database 21c Express Edition Release 21.0.0.0.0 - Production
Version 21.3.0.0.0

SQL> CREATE TABLE Category (
  2      Category_ID NUMBER PRIMARY KEY,
  3      Category_Name VARCHAR2(50) UNIQUE,
  4      Description VARCHAR2(100)
  5  );

Table created.

SQL> CREATE TABLE Product (
  2      Product_ID NUMBER PRIMARY KEY,
  3      Product_Name VARCHAR2(100) NOT NULL,
  4      Category_ID NUMBER,
  5      Price NUMBER(10,2) NOT NULL,
  6      Stock NUMBER NOT NULL,
  7      CONSTRAINT fk_product_category
  8      FOREIGN KEY (Category_ID)
  9      REFERENCES Category(Category_ID)
 10  );

Table created.

SQL> INSERT INTO Category
  2  VALUES (1, 'Electronics', 'Electronic products');

1 row created.

SQL>
SQL> INSERT INTO Category
  2  VALUES (2, 'Clothing', 'Clothing and fashion products');

1 row created.

SQL>
SQL> INSERT INTO Category
  2  VALUES (3, 'Books', 'Books and educational materials');

1 row created.

SQL>
SQL> INSERT INTO Category
  2  VALUES (4, 'Home Appliances', 'Home and kitchen appliances');

1 row created.

SQL>
SQL> INSERT INTO Category
  2  VALUES (5, 'Beauty', 'Beauty and personal care products');

1 row created.

SQL>
SQL> INSERT INTO Category
  2  VALUES (6, 'Sports', 'Sports and fitness products');

1 row created.

SQL>
SQL> INSERT INTO Category
  2  VALUES (7, 'Toys', 'Toys and games');

1 row created.

SQL>
SQL> INSERT INTO Category
  2  VALUES (8, 'Grocery', 'Food and grocery products');

1 row created.

SQL>
SQL> INSERT INTO Category
  2  VALUES (9, 'Footwear', 'Shoes and footwear products');

1 row created.

SQL>
SQL> INSERT INTO Category
  2  VALUES (10, 'Furniture', 'Home and office furniture');

1 row created.

SQL> INSERT INTO Product
  2  VALUES (101, 'Laptop', 1, 55000, 10);

1 row created.

SQL>
SQL> INSERT INTO Product
  2  VALUES (102, 'Smartphone', 1, 25000, 20);

1 row created.

SQL>
SQL> INSERT INTO Product
  2  VALUES (103, 'Headphones', 1, 1999, 30);

1 row created.

SQL>
SQL> INSERT INTO Product
  2  VALUES (104, 'Smart Watch', 1, 3499, 15);

1 row created.

SQL>
SQL> INSERT INTO Product
  2  VALUES (105, 'T-Shirt', 2, 799, 50);

1 row created.

SQL>
SQL> INSERT INTO Product
  2  VALUES (106, 'Jeans', 2, 1499, 40);

1 row created.

SQL>
SQL> INSERT INTO Product
  2  VALUES (107, 'Python Programming Book', 3, 599, 25);

1 row created.

SQL>
SQL> INSERT INTO Product
  2  VALUES (108, 'Data Science Book', 3, 699, 20);

1 row created.

SQL>
SQL> INSERT INTO Product
  2  VALUES (109, 'Mixer Grinder', 4, 3500, 12);

1 row created.

SQL>
SQL> INSERT INTO Product
  2  VALUES (110, 'Electric Kettle', 4, 1800, 18);

1 row created.

SQL> select*from category;

CATEGORY_ID CATEGORY_NAME
----------- --------------------------------------------------
DESCRIPTION
--------------------------------------------------------------------------------
          1 Electronics
Electronic products

          2 Clothing
Clothing and fashion products

          3 Books
Books and educational materials


CATEGORY_ID CATEGORY_NAME
----------- --------------------------------------------------
DESCRIPTION
--------------------------------------------------------------------------------
          4 Home Appliances
Home and kitchen appliances

          5 Beauty
Beauty and personal care products

          6 Sports
Sports and fitness products


CATEGORY_ID CATEGORY_NAME
----------- --------------------------------------------------
DESCRIPTION
--------------------------------------------------------------------------------
          7 Toys
Toys and games

          8 Grocery
Food and grocery products

          9 Footwear
Shoes and footwear products


CATEGORY_ID CATEGORY_NAME
----------- --------------------------------------------------
DESCRIPTION
--------------------------------------------------------------------------------
         10 Furniture
Home and office furniture


10 rows selected.

SQL> select*from product;

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
CATEGORY_ID      PRICE      STOCK
----------- ---------- ----------
       101
Laptop
          1      55000         10

       102
Smartphone
          1      25000         20

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
CATEGORY_ID      PRICE      STOCK
----------- ---------- ----------

       103
Headphones
          1       1999         30

       104
Smart Watch

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
CATEGORY_ID      PRICE      STOCK
----------- ---------- ----------
          1       3499         15

       105
T-Shirt
          2        799         50

       106

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
CATEGORY_ID      PRICE      STOCK
----------- ---------- ----------
Jeans
          2       1499         40

       107
Python Programming Book
          3        599         25


PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
CATEGORY_ID      PRICE      STOCK
----------- ---------- ----------
       108
Data Science Book
          3        699         20

       109
Mixer Grinder
          4       3500         12

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
CATEGORY_ID      PRICE      STOCK
----------- ---------- ----------

       110
Electric Kettle
          4       1800         18


10 rows selected.

SQL> SELECT
  2      c.Category_Name,
  3      p.Product_Name,
  4      p.Price,
  5      p.Stock
  6  FROM Category c
  7  JOIN Product p
  8  ON c.Category_ID = p.Category_ID
  9  ORDER BY c.Category_Name;

CATEGORY_NAME
--------------------------------------------------
PRODUCT_NAME
--------------------------------------------------------------------------------
     PRICE      STOCK
---------- ----------
Books
Data Science Book
       699         20

Books
Python Programming Book
       599         25

CATEGORY_NAME
--------------------------------------------------
PRODUCT_NAME
--------------------------------------------------------------------------------
     PRICE      STOCK
---------- ----------

Clothing
T-Shirt
       799         50

Clothing
Jeans

CATEGORY_NAME
--------------------------------------------------
PRODUCT_NAME
--------------------------------------------------------------------------------
     PRICE      STOCK
---------- ----------
      1499         40

Electronics
Smartphone
     25000         20

Electronics

CATEGORY_NAME
--------------------------------------------------
PRODUCT_NAME
--------------------------------------------------------------------------------
     PRICE      STOCK
---------- ----------
Laptop
     55000         10

Electronics
Smart Watch
      3499         15


CATEGORY_NAME
--------------------------------------------------
PRODUCT_NAME
--------------------------------------------------------------------------------
     PRICE      STOCK
---------- ----------
Electronics
Headphones
      1999         30

Home Appliances
Electric Kettle
      1800         18

CATEGORY_NAME
--------------------------------------------------
PRODUCT_NAME
--------------------------------------------------------------------------------
     PRICE      STOCK
---------- ----------

Home Appliances
Mixer Grinder
      3500         12


10 rows selected.

SQL> UPDATE Product
  2  SET Price = 58000
  3  WHERE Product_ID = 101;

1 row updated.

SQL> UPDATE Product
  2  SET Price = 899,
  3      Stock = 60
  4  WHERE Product_ID = 103;

1 row updated.

SQL> DELETE FROM Product
  2  WHERE Product_ID = 108;

1 row deleted.

SQL> DELETE FROM Product
  2  WHERE Stock < 10;

0 rows deleted.

SQL> DELETE FROM Product
  2  WHERE Product_ID = 106;

1 row deleted.

SQL> select*from category;

CATEGORY_ID CATEGORY_NAME
----------- --------------------------------------------------
DESCRIPTION
--------------------------------------------------------------------------------
          1 Electronics
Electronic products

          2 Clothing
Clothing and fashion products

          3 Books
Books and educational materials


CATEGORY_ID CATEGORY_NAME
----------- --------------------------------------------------
DESCRIPTION
--------------------------------------------------------------------------------
          4 Home Appliances
Home and kitchen appliances

          5 Beauty
Beauty and personal care products

          6 Sports
Sports and fitness products


CATEGORY_ID CATEGORY_NAME
----------- --------------------------------------------------
DESCRIPTION
--------------------------------------------------------------------------------
          7 Toys
Toys and games

          8 Grocery
Food and grocery products

          9 Footwear
Shoes and footwear products


CATEGORY_ID CATEGORY_NAME
----------- --------------------------------------------------
DESCRIPTION
--------------------------------------------------------------------------------
         10 Furniture
Home and office furniture


10 rows selected.

SQL> select *from product;

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
CATEGORY_ID      PRICE      STOCK
----------- ---------- ----------
       101
Laptop
          1      58000         10

       102
Smartphone
          1      25000         20

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
CATEGORY_ID      PRICE      STOCK
----------- ---------- ----------

       103
Headphones
          1        899         60

       104
Smart Watch

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
CATEGORY_ID      PRICE      STOCK
----------- ---------- ----------
          1       3499         15

       105
T-Shirt
          2        799         50

       107

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
CATEGORY_ID      PRICE      STOCK
----------- ---------- ----------
Python Programming Book
          3        599         25

       109
Mixer Grinder
          4       3500         12


PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
CATEGORY_ID      PRICE      STOCK
----------- ---------- ----------
       110
Electric Kettle
          4       1800         18


8 rows selected.
