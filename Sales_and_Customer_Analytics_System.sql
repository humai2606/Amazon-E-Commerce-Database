SQL> SELECT COUNT(*) AS TOTAL_ORDERS
  2  FROM ORDERS;

TOTAL_ORDERS
------------
           8

SQL> SELECT SUM(TOTAL_AMOUNT) AS TOTAL_SALES
  2  FROM ORDERS
  3  WHERE ORDER_STATUS = 'Delivered';

TOTAL_SALES
-----------
       7400

SQL> SELECT AVG(TOTAL_AMOUNT) AS AVERAGE_SALES
  2  FROM ORDERS
  3  WHERE ORDER_STATUS = 'Delivered';

AVERAGE_SALES
-------------
         1850

SQL> SELECT MIN(TOTAL_AMOUNT) AS MINIMUM_SALES
  2  FROM ORDERS
  3  WHERE ORDER_STATUS = 'Delivered';

MINIMUM_SALES
-------------
         1200

SQL> SELECT MAX(TOTAL_AMOUNT) AS MAXIMUM_SALES
  2  FROM ORDERS
  3  WHERE ORDER_STATUS = 'Delivered';

MAXIMUM_SALES
-------------
         2500

SQL> SELECT
  2      O.ORDER_ID,
  3      O.CUSTOMER_ID,
  4      C.FIRST_NAME || ' ' || C.LAST_NAME AS CUSTOMER_NAME,
  5      O.ORDER_DATE,
  6      O.ORDER_STATUS,
  7      O.TOTAL_AMOUNT
  8  FROM ORDERS O
  9  JOIN CUSTOMER C
 10  ON O.CUSTOMER_ID = C.CUSTOMER_ID
 11  ORDER BY O.ORDER_ID;

  ORDER_ID CUSTOMER_ID
---------- -----------
CUSTOMER_NAME
--------------------------------------------------------------------------------
ORDER_DAT ORDER_STATUS         TOTAL_AMOUNT
--------- -------------------- ------------
       201         101
Arun Kumar
10-JAN-26 Delivered                    1500

       202         102
Priya Sharma
11-JAN-26 Delivered                    2500

  ORDER_ID CUSTOMER_ID
---------- -----------
CUSTOMER_NAME
--------------------------------------------------------------------------------
ORDER_DAT ORDER_STATUS         TOTAL_AMOUNT
--------- -------------------- ------------

       203         103
Rahul Verma
12-JAN-26 Cancelled                    1800

       204         104
Sneha Reddy

  ORDER_ID CUSTOMER_ID
---------- -----------
CUSTOMER_NAME
--------------------------------------------------------------------------------
ORDER_DAT ORDER_STATUS         TOTAL_AMOUNT
--------- -------------------- ------------
13-JAN-26 Pending                      3000

       205         105
Karthik Raj
14-JAN-26 Delivered                    1200

       206         106

  ORDER_ID CUSTOMER_ID
---------- -----------
CUSTOMER_NAME
--------------------------------------------------------------------------------
ORDER_DAT ORDER_STATUS         TOTAL_AMOUNT
--------- -------------------- ------------
Divya Nair
15-JAN-26 Cancelled                    3500

       207         107
Vignesh Mohan
16-JAN-26 Delivered                    2200


  ORDER_ID CUSTOMER_ID
---------- -----------
CUSTOMER_NAME
--------------------------------------------------------------------------------
ORDER_DAT ORDER_STATUS         TOTAL_AMOUNT
--------- -------------------- ------------
       208         101
Arun Kumar
17-JAN-26 Pending                      2800


8 rows selected.

SQL> SELECT
  2      ORDER_STATUS,
  3      COUNT(*) AS TOTAL_ORDERS,
  4      SUM(TOTAL_AMOUNT) AS TOTAL_SALES
  5  FROM ORDERS
  6  GROUP BY ORDER_STATUS
  7  ORDER BY TOTAL_SALES DESC;

ORDER_STATUS         TOTAL_ORDERS TOTAL_SALES
-------------------- ------------ -----------
Delivered                       4        7400
Pending                         2        5800
Cancelled                       2        5300

SQL> SELECT
  2      C.CUSTOMER_ID,
  3      C.FIRST_NAME || ' ' || C.LAST_NAME AS CUSTOMER_NAME,
  4      COUNT(O.ORDER_ID) AS TOTAL_ORDERS,
  5      SUM(O.TOTAL_AMOUNT) AS TOTAL_PURCHASE
  6  FROM CUSTOMER C
  7  JOIN ORDERS O
  8  ON C.CUSTOMER_ID = O.CUSTOMER_ID
  9  WHERE O.ORDER_STATUS = 'Delivered'
 10  GROUP BY C.CUSTOMER_ID, C.FIRST_NAME, C.LAST_NAME
 11  ORDER BY TOTAL_PURCHASE DESC;

CUSTOMER_ID
-----------
CUSTOMER_NAME
--------------------------------------------------------------------------------
TOTAL_ORDERS TOTAL_PURCHASE
------------ --------------
        102
Priya Sharma
           1           2500

        107
Vignesh Mohan
           1           2200

CUSTOMER_ID
-----------
CUSTOMER_NAME
--------------------------------------------------------------------------------
TOTAL_ORDERS TOTAL_PURCHASE
------------ --------------

        101
Arun Kumar
           1           1500

        105
Karthik Raj

CUSTOMER_ID
-----------
CUSTOMER_NAME
--------------------------------------------------------------------------------
TOTAL_ORDERS TOTAL_PURCHASE
------------ --------------
           1           1200
SQL> SELECT ORDER_STATUS, COUNT(*)
  2  FROM ORDERS
  3  GROUP BY ORDER_STATUS;

ORDER_STATUS           COUNT(*)
-------------------- ----------
Delivered                     4
Cancelled                     2
Pending                       2

SQL> SELECT ORDER_ID, CUSTOMER_ID, ORDER_STATUS
  2  FROM ORDERS;

  ORDER_ID CUSTOMER_ID ORDER_STATUS
---------- ----------- --------------------
       201         101 Delivered
       202         102 Delivered
       203         103 Cancelled
       204         104 Pending
       205         105 Delivered
       206         106 Cancelled
       207         107 Delivered
       208         101 Pending

8 rows selected.

SQL> SELECT
  2      P.PRODUCT_ID,
  3      P.PRODUCT_NAME,
  4      SUM(OI.QUANTITY) AS TOTAL_QUANTITY_SOLD
  5  FROM PRODUCT P
  6  JOIN ORDER_ITEM OI
  7  ON P.PRODUCT_ID = OI.PRODUCT_ID
  8  JOIN ORDERS O
  9  ON OI.ORDER_ID = O.ORDER_ID
 10  WHERE O.ORDER_STATUS = 'Delivered'
 11  GROUP BY P.PRODUCT_ID, P.PRODUCT_NAME
 12  ORDER BY TOTAL_QUANTITY_SOLD DESC;

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
TOTAL_QUANTITY_SOLD
-------------------
       103
Headphones
                  1

       102
Smartphone
                  1

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
TOTAL_QUANTITY_SOLD
-------------------

       105
T-Shirt
                  1

       104
Smart Watch

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
TOTAL_QUANTITY_SOLD
-------------------
                  1


SQL> SELECT
  2      P.PRODUCT_ID,
  3      P.PRODUCT_NAME,
  4      SUM(OI.QUANTITY * OI.UNIT_PRICE) AS TOTAL_SALES
  5  FROM PRODUCT P
  6  JOIN ORDER_ITEM OI
  7  ON P.PRODUCT_ID = OI.PRODUCT_ID
  8  JOIN ORDERS O
  9  ON OI.ORDER_ID = O.ORDER_ID
 10  WHERE O.ORDER_STATUS = 'Delivered'
 11  GROUP BY P.PRODUCT_ID, P.PRODUCT_NAME
 12  ORDER BY TOTAL_SALES DESC;

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
TOTAL_SALES
-----------
       104
Smart Watch
       2500

       102
Smartphone
       2200

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
TOTAL_SALES
-----------

       103
Headphones
       1500

       105
T-Shirt

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
TOTAL_SALES
-----------
       1200


SQL> SELECT
  2      C.CATEGORY_ID,
  3      C.CATEGORY_NAME,
  4      SUM(OI.QUANTITY * OI.UNIT_PRICE) AS TOTAL_SALES
  5  FROM CATEGORY C
  6  JOIN PRODUCT P
  7  ON C.CATEGORY_ID = P.CATEGORY_ID
  8  JOIN ORDER_ITEM OI
  9  ON P.PRODUCT_ID = OI.PRODUCT_ID
 10  JOIN ORDERS O
 11  ON OI.ORDER_ID = O.ORDER_ID
 12  WHERE O.ORDER_STATUS = 'Delivered'
 13  GROUP BY C.CATEGORY_ID, C.CATEGORY_NAME
 14  ORDER BY TOTAL_SALES DESC;

CATEGORY_ID CATEGORY_NAME                                      TOTAL_SALES
----------- -------------------------------------------------- -----------
          1 Electronics                                               6200
          2 Clothing                                                  1200

SQL> SELECT
  2      C.CATEGORY_NAME,
  3      SUM(OI.QUANTITY) AS TOTAL_QUANTITY_SOLD
  4  FROM CATEGORY C
  5  JOIN PRODUCT P
  6  ON C.CATEGORY_ID = P.CATEGORY_ID
  7  JOIN ORDER_ITEM OI
  8  ON P.PRODUCT_ID = OI.PRODUCT_ID
  9  JOIN ORDERS O
 10  ON OI.ORDER_ID = O.ORDER_ID
 11  WHERE O.ORDER_STATUS = 'Delivered'
 12  GROUP BY C.CATEGORY_NAME
 13  ORDER BY TOTAL_QUANTITY_SOLD DESC;

CATEGORY_NAME                                      TOTAL_QUANTITY_SOLD
-------------------------------------------------- -------------------
Electronics                                                          3
Clothing                                                             1

SQL> SELECT
  2      COUNT(*) AS TOTAL_ORDERS,
  3      SUM(CASE WHEN ORDER_STATUS = 'Delivered' THEN 1 ELSE 0 END) AS DELIVERED_ORDERS,
  4      SUM(CASE WHEN ORDER_STATUS = 'Pending' THEN 1 ELSE 0 END) AS PENDING_ORDERS,
  5      SUM(CASE WHEN ORDER_STATUS = 'Cancelled' THEN 1 ELSE 0 END) AS CANCELLED_ORDERS,
  6      SUM(CASE WHEN ORDER_STATUS = 'Delivered' THEN TOTAL_AMOUNT ELSE 0 END) AS TOTAL_SALES,
  7      AVG(CASE WHEN ORDER_STATUS = 'Delivered' THEN TOTAL_AMOUNT END) AS AVERAGE_SALES
  8  FROM ORDERS;

TOTAL_ORDERS DELIVERED_ORDERS PENDING_ORDERS CANCELLED_ORDERS TOTAL_SALES
------------ ---------------- -------------- ---------------- -----------
AVERAGE_SALES
-------------
           8                4              2                2        7400
         1850
