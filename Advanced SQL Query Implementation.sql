SQL> SELECT *
  2  FROM PRODUCT
  3  WHERE PRICE > (
  4      SELECT AVG(PRICE)
  5      FROM PRODUCT
  6  );

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
CATEGORY_ID      PRICE      STOCK  SELLER_ID
----------- ---------- ---------- ----------
       101
Laptop
          1      55000         10        201

       102
Smartphone
          1      25000         20        201

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
CATEGORY_ID      PRICE      STOCK  SELLER_ID
----------- ---------- ---------- ----------


SQL> SELECT CUSTOMER_ID, SUM(TOTAL_AMOUNT) AS TOTAL_PURCHASE
  2  FROM ORDERS
  3  GROUP BY CUSTOMER_ID
  4  HAVING SUM(TOTAL_AMOUNT) = (
  5      SELECT MAX(TOTAL)
  6      FROM (
  7          SELECT SUM(TOTAL_AMOUNT) AS TOTAL
  8          FROM ORDERS
  9          GROUP BY CUSTOMER_ID
 10      )
 11  );

CUSTOMER_ID TOTAL_PURCHASE
----------- --------------
        101           4300

SQL> SELECT P.PRODUCT_ID,
  2         P.PRODUCT_NAME,
  3         SUM(O.QUANTITY) AS TOTAL_SOLD
  4  FROM PRODUCT P
  5  JOIN ORDER_ITEM O
  6  ON P.PRODUCT_ID = O.PRODUCT_ID
  7  GROUP BY P.PRODUCT_ID, P.PRODUCT_NAME
  8  ORDER BY TOTAL_SOLD DESC;

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
TOTAL_SOLD
----------
       102
Smartphone
         1

       105
T-Shirt
         1

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
TOTAL_SOLD
----------

       104
Smart Watch
         1

       103
Headphones

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
TOTAL_SOLD
----------
         1
         
SQL> SELECT DISTINCT C.CUSTOMER_ID,
  2         C.FIRST_NAME,
  3         C.LAST_NAME
  4  FROM CUSTOMER C
  5  JOIN ORDERS O
  6  ON C.CUSTOMER_ID = O.CUSTOMER_ID
  7  WHERE EXISTS (
  8      SELECT 1
  9      FROM PAYMENT P
 10      WHERE P.ORDER_ID = O.ORDER_ID
 11      AND P.PAYMENT_STATUS = 'Successful'
 12  );

CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME
--------------------------------------------------
        101 Arun
Kumar

        102 Priya
Sharma

        105 Karthik
Raj


CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME
--------------------------------------------------
        107 Vignesh
Mohan


SQL> SELECT C.CUSTOMER_ID,
  2         C.FIRST_NAME,
  3         C.LAST_NAME,
  4         COUNT(O.ORDER_ID) AS TOTAL_ORDERS,
  5         SUM(O.TOTAL_AMOUNT) AS TOTAL_PURCHASE,
  6         AVG(O.TOTAL_AMOUNT) AS AVG_ORDER_VALUE
  7  FROM CUSTOMER C
  8  JOIN ORDERS O
  9  ON C.CUSTOMER_ID = O.CUSTOMER_ID
 10  GROUP BY C.CUSTOMER_ID,
 11           C.FIRST_NAME,
 12           C.LAST_NAME
 13  ORDER BY TOTAL_PURCHASE DESC;

CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME                                          TOTAL_ORDERS TOTAL_PURCHASE
-------------------------------------------------- ------------ --------------
AVG_ORDER_VALUE
---------------
        101 Arun
Kumar                                                         2           4300
           2150

        106 Divya
Nair                                                          1           3500
           3500

CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME                                          TOTAL_ORDERS TOTAL_PURCHASE
-------------------------------------------------- ------------ --------------
AVG_ORDER_VALUE
---------------

        104 Sneha
Reddy                                                         1           3000
           3000

        102 Priya
Sharma                                                        1           2500

CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME                                          TOTAL_ORDERS TOTAL_PURCHASE
-------------------------------------------------- ------------ --------------
AVG_ORDER_VALUE
---------------
           2500

        107 Vignesh
Mohan                                                         1           2200
           2200

        103 Rahul

CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME                                          TOTAL_ORDERS TOTAL_PURCHASE
-------------------------------------------------- ------------ --------------
AVG_ORDER_VALUE
---------------
Verma                                                         1           1800
           1800

        105 Karthik
Raj                                                           1           1200
           1200


7 rows selected.

SQL> SELECT PRODUCT_ID, PRODUCT_NAME
  2  FROM PRODUCT P
  3  WHERE NOT EXISTS (
  4      SELECT 1
  5      FROM ORDER_ITEM O
  6      WHERE O.PRODUCT_ID = P.PRODUCT_ID
  7  );

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
       107
Python Programming Book

       108
Data Science Book

       109
Mixer Grinder


PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
       110
Electric Kettle

       101
Laptop

       106
Jeans


6 rows selected.