 CREATE TABLE Orders (
  2      Order_ID NUMBER PRIMARY KEY,s enter HELP
  3      Customer_ID NUMBER,
  4      Order_Date DATE,
  5      Delivery_Date DATE,
  6      Order_Status VARCHAR2(20),
  7      Total_Amount NUMBER(10,2),
  8      CONSTRAINT fk_order_customer
  9      FOREIGN KEY (Customer_ID)
 10      REFERENCES Customer(Customer_ID)
 11  );

Table created.
CREATE TABLE Order_Item (
  2      OrderItem_ID NUMBER PRIMARY KEY,
  3      Order_ID NUMBER,
  4      Product_ID NUMBER,
  5      Quantity NUMBER,
  6      Unit_Price NUMBER(10,2)
  7  );

Table created.

SQL> ALTER TABLE Order_Item
  2  ADD CONSTRAINT fk_orderitem_order
  3  FOREIGN KEY (Order_ID)
  4  REFERENCES Orders(Order_ID);

Table altered.

SQL> ALTER TABLE Order_Item
  2  ADD CONSTRAINT fk_orderitem_product
  3  FOREIGN KEY (Product_ID)
  4  REFERENCES Product(Product_ID);

Table altered.
SQL> INSERT INTO Orders
  2  VALUES (201, 101, TO_DATE('10-09-2026','DD-MM-YYYY'),
  3          TO_DATE('13-09-2026','DD-MM-YYYY'), 'Delivered', 899);

1 row created.

SQL> 
SQL> INSERT INTO Orders
  2  VALUES (202, 102, TO_DATE('11-09-2026','DD-MM-YYYY'),
  3          TO_DATE('15-09-2026','DD-MM-YYYY'), 'Shipped', 1299);

1 row created.

SQL> 
SQL> INSERT INTO Orders
  2  VALUES (203, 103, TO_DATE('12-09-2026','DD-MM-YYYY'),
  3          TO_DATE('16-09-2026','DD-MM-YYYY'), 'Delivered', 599);

1 row created.

SQL> 
SQL> INSERT INTO Orders
  2  VALUES (204, 104, TO_DATE('13-09-2026','DD-MM-YYYY'),
  3          TO_DATE('17-09-2026','DD-MM-YYYY'), 'Pending', 1499);

1 row created.

SQL> 
SQL> INSERT INTO Orders
  2  VALUES (205, 105, TO_DATE('14-09-2026','DD-MM-YYYY'),
  3          TO_DATE('18-09-2026','DD-MM-YYYY'), 'Delivered', 799);

1 row created.

SQL> 
SQL> INSERT INTO Orders
  2  VALUES (206, 106, TO_DATE('15-09-2026','DD-MM-YYYY'),
  3          TO_DATE('19-09-2026','DD-MM-YYYY'), 'Shipped', 1099);

1 row created.

SQL> 
SQL> INSERT INTO Orders
  2  VALUES (207, 107, TO_DATE('16-09-2026','DD-MM-YYYY'),
  3          TO_DATE('20-09-2026','DD-MM-YYYY'), 'Pending', 699);

1 row created.



SQL> INSERT INTO Order_Item
  2  VALUES (301, 201, 101, 1, 899);

1 row created.


SQL> INSERT INTO Order_Item
  2  VALUES (302, 201, 103, 1, 1999);

1 row created.

SQL> 
SQL> INSERT INTO Order_Item
  2  VALUES (303, 202, 102, 1, 1299);

1 row created.

SQL> 
SQL> INSERT INTO Order_Item
  2  VALUES (304, 203, 104, 1, 599);

1 row created.

SQL> 
SQL> INSERT INTO Order_Item
  2  VALUES (305, 204, 105, 1, 799);

1 row created.

SQL> 
SQL> INSERT INTO Order_Item
  2  VALUES (306, 205, 106, 1, 799);

1 row created.

SQL> 
SQL> INSERT INTO Order_Item
  2  VALUES (307, 206, 107, 1, 1099);

1 row created.

SQL> 
SQL> INSERT INTO Order_Item
  2  VALUES (308, 207, 108, 1, 699);

1 row created.
INSERT INTO Orders
  2  VALUES (208, 101, TO_DATE('20-09-2026','DD-MM-YYYY'),
  3          TO_DATE('23-09-2026','DD-MM-YYYY'),
  4          'Pending', 999);

1 row created.

SQL> SELECT * FROM Orders
  2  WHERE Order_ID = 208;

  ORDER_ID CUSTOMER_ID ORDER_DAT DELIVERY_ ORDER_STATUS         TOTAL_AMOUNT
---------- ----------- --------- --------- -------------------- ------------
       208         101 20-SEP-26 23-SEP-26 Pending                       999
UPDATE Orders
  2  SET Order_Status = 'Shipped'
  3  WHERE Order_ID = 204;

1 row updated.

SQL> SELECT Order_ID, Customer_ID, Order_Status
  2  FROM Orders
  3  WHERE Order_ID = 204;

  ORDER_ID CUSTOMER_ID ORDER_STATUS
---------- ----------- --------------------
       204         104 Shipped
       SQL> SELECT
  2      c.Customer_ID,
  3      c.First_Name,
  4      c.Last_Name,
  5      o.Order_ID,
  6      o.Order_Date,
  7      p.Product_Name,
  8      oi.Quantity,
  9      oi.Unit_Price,
 10      o.Total_Amount,
 11      o.Order_Status
 12  FROM Customer c
 13  JOIN Orders o
 14  ON c.Customer_ID = o.Customer_ID
 15  JOIN Order_Item oi
 16  ON o.Order_ID = oi.Order_ID
 17  JOIN Product p
 18  ON oi.Product_ID = p.Product_ID
 19  ORDER BY c.Customer_ID, o.Order_ID;

CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME                                            ORDER_ID ORDER_DAT
-------------------------------------------------- ---------- ---------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE TOTAL_AMOUNT ORDER_STATUS
---------- ---------- ------------ --------------------
        101 Arun
Kumar                                                     201 10-SEP-26
Laptop
         1        899          899 Delivered


CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME                                            ORDER_ID ORDER_DAT
-------------------------------------------------- ---------- ---------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE TOTAL_AMOUNT ORDER_STATUS
---------- ---------- ------------ --------------------
        101 Arun
Kumar                                                     201 10-SEP-26
Headphones
         1       1999          899 Delivered


CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME                                            ORDER_ID ORDER_DAT
-------------------------------------------------- ---------- ---------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE TOTAL_AMOUNT ORDER_STATUS
---------- ---------- ------------ --------------------
        102 Priya
Sharma                                                    202 11-SEP-26
Smartphone
         1       1299         1299 Shipped


CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME                                            ORDER_ID ORDER_DAT
-------------------------------------------------- ---------- ---------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE TOTAL_AMOUNT ORDER_STATUS
---------- ---------- ------------ --------------------
        103 Rahul
Verma                                                     203 12-SEP-26
Smart Watch
         1        599          599 Delivered


CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME                                            ORDER_ID ORDER_DAT
-------------------------------------------------- ---------- ---------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE TOTAL_AMOUNT ORDER_STATUS
---------- ---------- ------------ --------------------
        104 Sneha
Reddy                                                     204 13-SEP-26
T-Shirt
         1        799         1499 Shipped


CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME                                            ORDER_ID ORDER_DAT
-------------------------------------------------- ---------- ---------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE TOTAL_AMOUNT ORDER_STATUS
---------- ---------- ------------ --------------------
        105 Karthik
Raj                                                       205 14-SEP-26
Jeans
         1        799          799 Delivered


CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME                                            ORDER_ID ORDER_DAT
-------------------------------------------------- ---------- ---------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE TOTAL_AMOUNT ORDER_STATUS
---------- ---------- ------------ --------------------
        106 Divya
Nair                                                      206 15-SEP-26
Python Programming Book
         1       1099         1099 Shipped


CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME                                            ORDER_ID ORDER_DAT
-------------------------------------------------- ---------- ---------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE TOTAL_AMOUNT ORDER_STATUS
---------- ---------- ------------ --------------------
        107 Vignesh
Mohan                                                     207 16-SEP-26
Data Science Book
         1        699          699 Pending


8 rows selected.
SQL> SELECT * FROM Orders;

  ORDER_ID CUSTOMER_ID ORDER_DAT DELIVERY_ ORDER_STATUS         TOTAL_AMOUNT
---------- ----------- --------- --------- -------------------- ------------
       201         101 10-SEP-26 13-SEP-26 Delivered                     899
       202         102 11-SEP-26 15-SEP-26 Shipped                      1299
       203         103 12-SEP-26 16-SEP-26 Delivered                     599
       204         104 13-SEP-26 17-SEP-26 Shipped                      1499
       205         105 14-SEP-26 18-SEP-26 Delivered                     799
       206         106 15-SEP-26 19-SEP-26 Shipped                      1099
       207         107 16-SEP-26 20-SEP-26 Pending                       699
       208         101 20-SEP-26 23-SEP-26 Pending                       999

8 rows selected.

SQL> 
SQL> SELECT * FROM Order_Item;

ORDERITEM_ID   ORDER_ID PRODUCT_ID   QUANTITY UNIT_PRICE
------------ ---------- ---------- ---------- ----------
         301        201        101          1        899
         302        201        103          1       1999
         303        202        102          1       1299
         304        203        104          1        599
         305        204        105          1        799
         306        205        106          1        799
         307        206        107          1       1099
         308        207        108          1        699

8 rows selected.
