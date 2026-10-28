SQL> SELECT C.CUSTOMER_ID,
  2         C.FIRST_NAME,
  3         C.LAST_NAME,
  4         O.ORDER_ID,
  5         O.ORDER_DATE,
  6         O.TOTAL_AMOUNT,
  7         O.ORDER_STATUS
  8  FROM CUSTOMER C
  9  INNER JOIN ORDERS O
 10  ON C.CUSTOMER_ID = O.CUSTOMER_ID
 11  ORDER BY O.ORDER_ID;

CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME                                            ORDER_ID ORDER_DAT
-------------------------------------------------- ---------- ---------
TOTAL_AMOUNT ORDER_STATUS
------------ --------------------
        101 Arun
Kumar                                                     201 10-JAN-26
        1500 Delivered

        102 Priya
Sharma                                                    202 11-JAN-26
        2500 Delivered

CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME                                            ORDER_ID ORDER_DAT
-------------------------------------------------- ---------- ---------
TOTAL_AMOUNT ORDER_STATUS
------------ --------------------

        103 Rahul
Verma                                                     203 12-JAN-26
        1800 Cancelled

        104 Sneha
Reddy                                                     204 13-JAN-26

CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME                                            ORDER_ID ORDER_DAT
-------------------------------------------------- ---------- ---------
TOTAL_AMOUNT ORDER_STATUS
------------ --------------------
        3000 Pending

        105 Karthik
Raj                                                       205 14-JAN-26
        1200 Delivered

        106 Divya

CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME                                            ORDER_ID ORDER_DAT
-------------------------------------------------- ---------- ---------
TOTAL_AMOUNT ORDER_STATUS
------------ --------------------
Nair                                                      206 15-JAN-26
        3500 Cancelled

        107 Vignesh
Mohan                                                     207 16-JAN-26
        2200 Delivered


CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME                                            ORDER_ID ORDER_DAT
-------------------------------------------------- ---------- ---------
TOTAL_AMOUNT ORDER_STATUS
------------ --------------------
        101 Arun
Kumar                                                     208 17-JAN-26
        2800 Pending


8 rows selected.

SQL> SELECT O.ORDER_ID,
  2         O.CUSTOMER_ID,
  3         O.ORDER_DATE,
  4         O.TOTAL_AMOUNT,
  5         P.PAYMENT_ID,
  6         P.PAYMENT_METHOD,
  7         P.PAYMENT_STATUS,
  8         P.AMOUNT
  9  FROM ORDERS O
 10  INNER JOIN PAYMENT P
 11  ON O.ORDER_ID = P.ORDER_ID
 12  ORDER BY O.ORDER_ID;

  ORDER_ID CUSTOMER_ID ORDER_DAT TOTAL_AMOUNT PAYMENT_ID
---------- ----------- --------- ------------ ----------
PAYMENT_METHOD                 PAYMENT_STATUS           AMOUNT
------------------------------ -------------------- ----------
       201         101 10-JAN-26         1500        501
UPI                            Successful                 1500

       202         102 11-JAN-26         2500        502
Credit Card                    Successful                 2500

       203         103 12-JAN-26         1800        503
Debit Card                     Failed                     1800


  ORDER_ID CUSTOMER_ID ORDER_DAT TOTAL_AMOUNT PAYMENT_ID
---------- ----------- --------- ------------ ----------
PAYMENT_METHOD                 PAYMENT_STATUS           AMOUNT
------------------------------ -------------------- ----------
       204         104 13-JAN-26         3000        504
UPI                            Pending                    3000

       205         105 14-JAN-26         1200        505
Cash                           Successful                 1200

       206         106 15-JAN-26         3500        506
Credit Card                    Failed                     3500


  ORDER_ID CUSTOMER_ID ORDER_DAT TOTAL_AMOUNT PAYMENT_ID
---------- ----------- --------- ------------ ----------
PAYMENT_METHOD                 PAYMENT_STATUS           AMOUNT
------------------------------ -------------------- ----------
       207         107 16-JAN-26         2200        507
UPI                            Successful                 2200

       208         101 17-JAN-26         2800        508
Debit Card                     Pending                    2800


8 rows selected

SQL> SELECT P.PRODUCT_ID,
  2         P.PRODUCT_NAME,
  3         P.PRICE,
  4         OI.ORDER_ID,
  5         OI.QUANTITY,
  6         OI.UNIT_PRICE
  7  FROM PRODUCT P
  8  INNER JOIN ORDER_ITEM OI
  9  ON P.PRODUCT_ID = OI.PRODUCT_ID
 10  ORDER BY OI.ORDER_ID;

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
     PRICE   ORDER_ID   QUANTITY UNIT_PRICE
---------- ---------- ---------- ----------
       101
Laptop
     55000        201          1      55000

       102
Smartphone
     25000        202          1      25000

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
     PRICE   ORDER_ID   QUANTITY UNIT_PRICE
---------- ---------- ---------- ----------

       103
Headphones
      1999        203          2       1999

       104
Smart Watch

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
     PRICE   ORDER_ID   QUANTITY UNIT_PRICE
---------- ---------- ---------- ----------
      3499        204          1       3499

       105
T-Shirt
       799        205          2        799

       106

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
     PRICE   ORDER_ID   QUANTITY UNIT_PRICE
---------- ---------- ---------- ----------
Jeans
      1499        206          1       1499

       107
Python Programming Book
       599        207          1        599


PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
     PRICE   ORDER_ID   QUANTITY UNIT_PRICE
---------- ---------- ---------- ----------
       108
Data Science Book
       699        208          1        699


8 rows selected.

SQL> SELECT C.CUSTOMER_ID,
  2         C.FIRST_NAME,
  3         C.LAST_NAME,
  4         O.ORDER_ID,
  5         O.ORDER_DATE,
  6         O.TOTAL_AMOUNT,
  7         O.ORDER_STATUS
  8  FROM CUSTOMER C
  9  LEFT JOIN ORDERS O
 10  ON C.CUSTOMER_ID = O.CUSTOMER_ID
 11  ORDER BY C.CUSTOMER_ID;

CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME                                            ORDER_ID ORDER_DAT
-------------------------------------------------- ---------- ---------
TOTAL_AMOUNT ORDER_STATUS
------------ --------------------
        101 Arun
Kumar                                                     201 10-JAN-26
        1500 Delivered

        101 Arun
Kumar                                                     208 17-JAN-26
        2800 Pending

CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME                                            ORDER_ID ORDER_DAT
-------------------------------------------------- ---------- ---------
TOTAL_AMOUNT ORDER_STATUS
------------ --------------------

        102 Priya
Sharma                                                    202 11-JAN-26
        2500 Delivered

        103 Rahul
Verma                                                     203 12-JAN-26

CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME                                            ORDER_ID ORDER_DAT
-------------------------------------------------- ---------- ---------
TOTAL_AMOUNT ORDER_STATUS
------------ --------------------
        1800 Cancelled

        104 Sneha
Reddy                                                     204 13-JAN-26
        3000 Pending

        105 Karthik

CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME                                            ORDER_ID ORDER_DAT
-------------------------------------------------- ---------- ---------
TOTAL_AMOUNT ORDER_STATUS
------------ --------------------
Raj                                                       205 14-JAN-26
        1200 Delivered

        106 Divya
Nair                                                      206 15-JAN-26
        3500 Cancelled


CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME                                            ORDER_ID ORDER_DAT
-------------------------------------------------- ---------- ---------
TOTAL_AMOUNT ORDER_STATUS
------------ --------------------
        107 Vignesh
Mohan                                                     207 16-JAN-26
        2200 Delivered


8 rows selected.

SQL> SELECT O.ORDER_ID,
  2         O.ORDER_DATE,
  3         O.TOTAL_AMOUNT,
  4         O.ORDER_STATUS,
  5         C.CUSTOMER_ID,
  6         C.FIRST_NAME,
  7         C.LAST_NAME
  8  FROM CUSTOMER C
  9  RIGHT JOIN ORDERS O
 10  ON C.CUSTOMER_ID = O.CUSTOMER_ID
 11  ORDER BY O.ORDER_ID;

  ORDER_ID ORDER_DAT TOTAL_AMOUNT ORDER_STATUS         CUSTOMER_ID
---------- --------- ------------ -------------------- -----------
FIRST_NAME
--------------------------------------------------
LAST_NAME
--------------------------------------------------
       201 10-JAN-26         1500 Delivered                    101
Arun
Kumar

       202 11-JAN-26         2500 Delivered                    102
Priya
Sharma

  ORDER_ID ORDER_DAT TOTAL_AMOUNT ORDER_STATUS         CUSTOMER_ID
---------- --------- ------------ -------------------- -----------
FIRST_NAME
--------------------------------------------------
LAST_NAME
--------------------------------------------------

       203 12-JAN-26         1800 Cancelled                    103
Rahul
Verma

       204 13-JAN-26         3000 Pending                      104
Sneha

  ORDER_ID ORDER_DAT TOTAL_AMOUNT ORDER_STATUS         CUSTOMER_ID
---------- --------- ------------ -------------------- -----------
FIRST_NAME
--------------------------------------------------
LAST_NAME
--------------------------------------------------
Reddy

       205 14-JAN-26         1200 Delivered                    105
Karthik
Raj

       206 15-JAN-26         3500 Cancelled                    106

  ORDER_ID ORDER_DAT TOTAL_AMOUNT ORDER_STATUS         CUSTOMER_ID
---------- --------- ------------ -------------------- -----------
FIRST_NAME
--------------------------------------------------
LAST_NAME
--------------------------------------------------
Divya
Nair

       207 16-JAN-26         2200 Delivered                    107
Vignesh
Mohan


  ORDER_ID ORDER_DAT TOTAL_AMOUNT ORDER_STATUS         CUSTOMER_ID
---------- --------- ------------ -------------------- -----------
FIRST_NAME
--------------------------------------------------
LAST_NAME
--------------------------------------------------
       208 17-JAN-26         2800 Pending                      101
Arun
Kumar


8 rows selected.

SQL> SELECT C.CUSTOMER_ID,
  2         C.FIRST_NAME,
  3         C.LAST_NAME,
  4         O.ORDER_ID,
  5         O.ORDER_DATE,
  6         O.ORDER_STATUS,
  7         P.PRODUCT_ID,
  8         P.PRODUCT_NAME,
  9         OI.QUANTITY,
 10         OI.UNIT_PRICE,
 11         PY.PAYMENT_METHOD,
 12         PY.PAYMENT_STATUS,
 13         PY.AMOUNT
 14  FROM CUSTOMER C
 15  INNER JOIN ORDERS O
 16  ON C.CUSTOMER_ID = O.CUSTOMER_ID
 17  INNER JOIN ORDER_ITEM OI
 18  ON O.ORDER_ID = OI.ORDER_ID
 19  INNER JOIN PRODUCT P
 20  ON OI.PRODUCT_ID = P.PRODUCT_ID
 21  INNER JOIN PAYMENT PY
 22  ON O.ORDER_ID = PY.ORDER_ID
 23  ORDER BY O.ORDER_ID;

CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME                                            ORDER_ID ORDER_DAT
-------------------------------------------------- ---------- ---------
ORDER_STATUS         PRODUCT_ID
-------------------- ----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE PAYMENT_METHOD                 PAYMENT_STATUS
---------- ---------- ------------------------------ --------------------
    AMOUNT
----------
        101 Arun

CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME                                            ORDER_ID ORDER_DAT
-------------------------------------------------- ---------- ---------
ORDER_STATUS         PRODUCT_ID
-------------------- ----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE PAYMENT_METHOD                 PAYMENT_STATUS
---------- ---------- ------------------------------ --------------------
    AMOUNT
----------
Kumar                                                     201 10-JAN-26

CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME                                            ORDER_ID ORDER_DAT
-------------------------------------------------- ---------- ---------
ORDER_STATUS         PRODUCT_ID
-------------------- ----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE PAYMENT_METHOD                 PAYMENT_STATUS
---------- ---------- ------------------------------ --------------------
    AMOUNT
----------
Delivered                   101

CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME                                            ORDER_ID ORDER_DAT
-------------------------------------------------- ---------- ---------
ORDER_STATUS         PRODUCT_ID
-------------------- ----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE PAYMENT_METHOD                 PAYMENT_STATUS
---------- ---------- ------------------------------ --------------------
    AMOUNT
----------
Laptop

CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME                                            ORDER_ID ORDER_DAT
-------------------------------------------------- ---------- ---------
ORDER_STATUS         PRODUCT_ID
-------------------- ----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE PAYMENT_METHOD                 PAYMENT_STATUS
---------- ---------- ------------------------------ --------------------
    AMOUNT
----------
         1      55000 UPI                            Successful

CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME                                            ORDER_ID ORDER_DAT
-------------------------------------------------- ---------- ---------
ORDER_STATUS         PRODUCT_ID
-------------------- ----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE PAYMENT_METHOD                 PAYMENT_STATUS
---------- ---------- ------------------------------ --------------------
    AMOUNT
----------
      1500

CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME                                            ORDER_ID ORDER_DAT
-------------------------------------------------- ---------- ---------
ORDER_STATUS         PRODUCT_ID
-------------------- ----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE PAYMENT_METHOD                 PAYMENT_STATUS
---------- ---------- ------------------------------ --------------------
    AMOUNT
----------


CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME                                            ORDER_ID ORDER_DAT
-------------------------------------------------- ---------- ---------
ORDER_STATUS         PRODUCT_ID
-------------------- ----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE PAYMENT_METHOD                 PAYMENT_STATUS
---------- ---------- ------------------------------ --------------------
    AMOUNT
----------
        102 Priya

CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME                                            ORDER_ID ORDER_DAT
-------------------------------------------------- ---------- ---------
ORDER_STATUS         PRODUCT_ID
-------------------- ----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE PAYMENT_METHOD                 PAYMENT_STATUS
---------- ---------- ------------------------------ --------------------
    AMOUNT
----------
Sharma                                                    202 11-JAN-26

CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME                                            ORDER_ID ORDER_DAT
-------------------------------------------------- ---------- ---------
ORDER_STATUS         PRODUCT_ID
-------------------- ----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE PAYMENT_METHOD                 PAYMENT_STATUS
---------- ---------- ------------------------------ --------------------
    AMOUNT
----------
Delivered                   102

CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME                                            ORDER_ID ORDER_DAT
-------------------------------------------------- ---------- ---------
ORDER_STATUS         PRODUCT_ID
-------------------- ----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE PAYMENT_METHOD                 PAYMENT_STATUS
---------- ---------- ------------------------------ --------------------
    AMOUNT
----------
Smartphone

CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME                                            ORDER_ID ORDER_DAT
-------------------------------------------------- ---------- ---------
ORDER_STATUS         PRODUCT_ID
-------------------- ----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE PAYMENT_METHOD                 PAYMENT_STATUS
---------- ---------- ------------------------------ --------------------
    AMOUNT
----------
         1      25000 Credit Card                    Successful

CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME                                            ORDER_ID ORDER_DAT
-------------------------------------------------- ---------- ---------
ORDER_STATUS         PRODUCT_ID
-------------------- ----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE PAYMENT_METHOD                 PAYMENT_STATUS
---------- ---------- ------------------------------ --------------------
    AMOUNT
----------
      2500

CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME                                            ORDER_ID ORDER_DAT
-------------------------------------------------- ---------- ---------
ORDER_STATUS         PRODUCT_ID
-------------------- ----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE PAYMENT_METHOD                 PAYMENT_STATUS
---------- ---------- ------------------------------ --------------------
    AMOUNT
----------


CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME                                            ORDER_ID ORDER_DAT
-------------------------------------------------- ---------- ---------
ORDER_STATUS         PRODUCT_ID
-------------------- ----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE PAYMENT_METHOD                 PAYMENT_STATUS
---------- ---------- ------------------------------ --------------------
    AMOUNT
----------
        103 Rahul

CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME                                            ORDER_ID ORDER_DAT
-------------------------------------------------- ---------- ---------
ORDER_STATUS         PRODUCT_ID
-------------------- ----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE PAYMENT_METHOD                 PAYMENT_STATUS
---------- ---------- ------------------------------ --------------------
    AMOUNT
----------
Verma                                                     203 12-JAN-26

CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME                                            ORDER_ID ORDER_DAT
-------------------------------------------------- ---------- ---------
ORDER_STATUS         PRODUCT_ID
-------------------- ----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE PAYMENT_METHOD                 PAYMENT_STATUS
---------- ---------- ------------------------------ --------------------
    AMOUNT
----------
Cancelled                   103

CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME                                            ORDER_ID ORDER_DAT
-------------------------------------------------- ---------- ---------
ORDER_STATUS         PRODUCT_ID
-------------------- ----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE PAYMENT_METHOD                 PAYMENT_STATUS
---------- ---------- ------------------------------ --------------------
    AMOUNT
----------
Headphones

CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME                                            ORDER_ID ORDER_DAT
-------------------------------------------------- ---------- ---------
ORDER_STATUS         PRODUCT_ID
-------------------- ----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE PAYMENT_METHOD                 PAYMENT_STATUS
---------- ---------- ------------------------------ --------------------
    AMOUNT
----------
         2       1999 Debit Card                     Failed

CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME                                            ORDER_ID ORDER_DAT
-------------------------------------------------- ---------- ---------
ORDER_STATUS         PRODUCT_ID
-------------------- ----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE PAYMENT_METHOD                 PAYMENT_STATUS
---------- ---------- ------------------------------ --------------------
    AMOUNT
----------
      1800

CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME                                            ORDER_ID ORDER_DAT
-------------------------------------------------- ---------- ---------
ORDER_STATUS         PRODUCT_ID
-------------------- ----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE PAYMENT_METHOD                 PAYMENT_STATUS
---------- ---------- ------------------------------ --------------------
    AMOUNT
----------


CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME                                            ORDER_ID ORDER_DAT
-------------------------------------------------- ---------- ---------
ORDER_STATUS         PRODUCT_ID
-------------------- ----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE PAYMENT_METHOD                 PAYMENT_STATUS
---------- ---------- ------------------------------ --------------------
    AMOUNT
----------
        104 Sneha

CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME                                            ORDER_ID ORDER_DAT
-------------------------------------------------- ---------- ---------
ORDER_STATUS         PRODUCT_ID
-------------------- ----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE PAYMENT_METHOD                 PAYMENT_STATUS
---------- ---------- ------------------------------ --------------------
    AMOUNT
----------
Reddy                                                     204 13-JAN-26

CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME                                            ORDER_ID ORDER_DAT
-------------------------------------------------- ---------- ---------
ORDER_STATUS         PRODUCT_ID
-------------------- ----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE PAYMENT_METHOD                 PAYMENT_STATUS
---------- ---------- ------------------------------ --------------------
    AMOUNT
----------
Pending                     104

CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME                                            ORDER_ID ORDER_DAT
-------------------------------------------------- ---------- ---------
ORDER_STATUS         PRODUCT_ID
-------------------- ----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE PAYMENT_METHOD                 PAYMENT_STATUS
---------- ---------- ------------------------------ --------------------
    AMOUNT
----------
Smart Watch

CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME                                            ORDER_ID ORDER_DAT
-------------------------------------------------- ---------- ---------
ORDER_STATUS         PRODUCT_ID
-------------------- ----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE PAYMENT_METHOD                 PAYMENT_STATUS
---------- ---------- ------------------------------ --------------------
    AMOUNT
----------
         1       3499 UPI                            Pending

CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME                                            ORDER_ID ORDER_DAT
-------------------------------------------------- ---------- ---------
ORDER_STATUS         PRODUCT_ID
-------------------- ----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE PAYMENT_METHOD                 PAYMENT_STATUS
---------- ---------- ------------------------------ --------------------
    AMOUNT
----------
      3000

CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME                                            ORDER_ID ORDER_DAT
-------------------------------------------------- ---------- ---------
ORDER_STATUS         PRODUCT_ID
-------------------- ----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE PAYMENT_METHOD                 PAYMENT_STATUS
---------- ---------- ------------------------------ --------------------
    AMOUNT
----------


CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME                                            ORDER_ID ORDER_DAT
-------------------------------------------------- ---------- ---------
ORDER_STATUS         PRODUCT_ID
-------------------- ----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE PAYMENT_METHOD                 PAYMENT_STATUS
---------- ---------- ------------------------------ --------------------
    AMOUNT
----------
        105 Karthik

CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME                                            ORDER_ID ORDER_DAT
-------------------------------------------------- ---------- ---------
ORDER_STATUS         PRODUCT_ID
-------------------- ----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE PAYMENT_METHOD                 PAYMENT_STATUS
---------- ---------- ------------------------------ --------------------
    AMOUNT
----------
Raj                                                       205 14-JAN-26

CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME                                            ORDER_ID ORDER_DAT
-------------------------------------------------- ---------- ---------
ORDER_STATUS         PRODUCT_ID
-------------------- ----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE PAYMENT_METHOD                 PAYMENT_STATUS
---------- ---------- ------------------------------ --------------------
    AMOUNT
----------
Delivered                   105

CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME                                            ORDER_ID ORDER_DAT
-------------------------------------------------- ---------- ---------
ORDER_STATUS         PRODUCT_ID
-------------------- ----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE PAYMENT_METHOD                 PAYMENT_STATUS
---------- ---------- ------------------------------ --------------------
    AMOUNT
----------
T-Shirt

CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME                                            ORDER_ID ORDER_DAT
-------------------------------------------------- ---------- ---------
ORDER_STATUS         PRODUCT_ID
-------------------- ----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE PAYMENT_METHOD                 PAYMENT_STATUS
---------- ---------- ------------------------------ --------------------
    AMOUNT
----------
         2        799 Cash                           Successful

CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME                                            ORDER_ID ORDER_DAT
-------------------------------------------------- ---------- ---------
ORDER_STATUS         PRODUCT_ID
-------------------- ----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE PAYMENT_METHOD                 PAYMENT_STATUS
---------- ---------- ------------------------------ --------------------
    AMOUNT
----------
      1200

CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME                                            ORDER_ID ORDER_DAT
-------------------------------------------------- ---------- ---------
ORDER_STATUS         PRODUCT_ID
-------------------- ----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE PAYMENT_METHOD                 PAYMENT_STATUS
---------- ---------- ------------------------------ --------------------
    AMOUNT
----------


CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME                                            ORDER_ID ORDER_DAT
-------------------------------------------------- ---------- ---------
ORDER_STATUS         PRODUCT_ID
-------------------- ----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE PAYMENT_METHOD                 PAYMENT_STATUS
---------- ---------- ------------------------------ --------------------
    AMOUNT
----------
        106 Divya

CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME                                            ORDER_ID ORDER_DAT
-------------------------------------------------- ---------- ---------
ORDER_STATUS         PRODUCT_ID
-------------------- ----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE PAYMENT_METHOD                 PAYMENT_STATUS
---------- ---------- ------------------------------ --------------------
    AMOUNT
----------
Nair                                                      206 15-JAN-26

CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME                                            ORDER_ID ORDER_DAT
-------------------------------------------------- ---------- ---------
ORDER_STATUS         PRODUCT_ID
-------------------- ----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE PAYMENT_METHOD                 PAYMENT_STATUS
---------- ---------- ------------------------------ --------------------
    AMOUNT
----------
Cancelled                   106

CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME                                            ORDER_ID ORDER_DAT
-------------------------------------------------- ---------- ---------
ORDER_STATUS         PRODUCT_ID
-------------------- ----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE PAYMENT_METHOD                 PAYMENT_STATUS
---------- ---------- ------------------------------ --------------------
    AMOUNT
----------
Jeans

CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME                                            ORDER_ID ORDER_DAT
-------------------------------------------------- ---------- ---------
ORDER_STATUS         PRODUCT_ID
-------------------- ----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE PAYMENT_METHOD                 PAYMENT_STATUS
---------- ---------- ------------------------------ --------------------
    AMOUNT
----------
         1       1499 Credit Card                    Failed

CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME                                            ORDER_ID ORDER_DAT
-------------------------------------------------- ---------- ---------
ORDER_STATUS         PRODUCT_ID
-------------------- ----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE PAYMENT_METHOD                 PAYMENT_STATUS
---------- ---------- ------------------------------ --------------------
    AMOUNT
----------
      3500

CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME                                            ORDER_ID ORDER_DAT
-------------------------------------------------- ---------- ---------
ORDER_STATUS         PRODUCT_ID
-------------------- ----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE PAYMENT_METHOD                 PAYMENT_STATUS
---------- ---------- ------------------------------ --------------------
    AMOUNT
----------


CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME                                            ORDER_ID ORDER_DAT
-------------------------------------------------- ---------- ---------
ORDER_STATUS         PRODUCT_ID
-------------------- ----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE PAYMENT_METHOD                 PAYMENT_STATUS
---------- ---------- ------------------------------ --------------------
    AMOUNT
----------
        107 Vignesh

CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME                                            ORDER_ID ORDER_DAT
-------------------------------------------------- ---------- ---------
ORDER_STATUS         PRODUCT_ID
-------------------- ----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE PAYMENT_METHOD                 PAYMENT_STATUS
---------- ---------- ------------------------------ --------------------
    AMOUNT
----------
Mohan                                                     207 16-JAN-26

CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME                                            ORDER_ID ORDER_DAT
-------------------------------------------------- ---------- ---------
ORDER_STATUS         PRODUCT_ID
-------------------- ----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE PAYMENT_METHOD                 PAYMENT_STATUS
---------- ---------- ------------------------------ --------------------
    AMOUNT
----------
Delivered                   107

CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME                                            ORDER_ID ORDER_DAT
-------------------------------------------------- ---------- ---------
ORDER_STATUS         PRODUCT_ID
-------------------- ----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE PAYMENT_METHOD                 PAYMENT_STATUS
---------- ---------- ------------------------------ --------------------
    AMOUNT
----------
Python Programming Book

CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME                                            ORDER_ID ORDER_DAT
-------------------------------------------------- ---------- ---------
ORDER_STATUS         PRODUCT_ID
-------------------- ----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE PAYMENT_METHOD                 PAYMENT_STATUS
---------- ---------- ------------------------------ --------------------
    AMOUNT
----------
         1        599 UPI                            Successful

CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME                                            ORDER_ID ORDER_DAT
-------------------------------------------------- ---------- ---------
ORDER_STATUS         PRODUCT_ID
-------------------- ----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE PAYMENT_METHOD                 PAYMENT_STATUS
---------- ---------- ------------------------------ --------------------
    AMOUNT
----------
      2200

CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME                                            ORDER_ID ORDER_DAT
-------------------------------------------------- ---------- ---------
ORDER_STATUS         PRODUCT_ID
-------------------- ----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE PAYMENT_METHOD                 PAYMENT_STATUS
---------- ---------- ------------------------------ --------------------
    AMOUNT
----------


CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME                                            ORDER_ID ORDER_DAT
-------------------------------------------------- ---------- ---------
ORDER_STATUS         PRODUCT_ID
-------------------- ----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE PAYMENT_METHOD                 PAYMENT_STATUS
---------- ---------- ------------------------------ --------------------
    AMOUNT
----------
        101 Arun

CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME                                            ORDER_ID ORDER_DAT
-------------------------------------------------- ---------- ---------
ORDER_STATUS         PRODUCT_ID
-------------------- ----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE PAYMENT_METHOD                 PAYMENT_STATUS
---------- ---------- ------------------------------ --------------------
    AMOUNT
----------
Kumar                                                     208 17-JAN-26

CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME                                            ORDER_ID ORDER_DAT
-------------------------------------------------- ---------- ---------
ORDER_STATUS         PRODUCT_ID
-------------------- ----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE PAYMENT_METHOD                 PAYMENT_STATUS
---------- ---------- ------------------------------ --------------------
    AMOUNT
----------
Pending                     108

CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME                                            ORDER_ID ORDER_DAT
-------------------------------------------------- ---------- ---------
ORDER_STATUS         PRODUCT_ID
-------------------- ----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE PAYMENT_METHOD                 PAYMENT_STATUS
---------- ---------- ------------------------------ --------------------
    AMOUNT
----------
Data Science Book

CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME                                            ORDER_ID ORDER_DAT
-------------------------------------------------- ---------- ---------
ORDER_STATUS         PRODUCT_ID
-------------------- ----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE PAYMENT_METHOD                 PAYMENT_STATUS
---------- ---------- ------------------------------ --------------------
    AMOUNT
----------
         1        699 Debit Card                     Pending

CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME                                            ORDER_ID ORDER_DAT
-------------------------------------------------- ---------- ---------
ORDER_STATUS         PRODUCT_ID
-------------------- ----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE PAYMENT_METHOD                 PAYMENT_STATUS
---------- ---------- ------------------------------ --------------------
    AMOUNT
----------
      2800

CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME                                            ORDER_ID ORDER_DAT
-------------------------------------------------- ---------- ---------
ORDER_STATUS         PRODUCT_ID
-------------------- ----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE PAYMENT_METHOD                 PAYMENT_STATUS
---------- ---------- ------------------------------ --------------------
    AMOUNT
----------


8 rows selected.

SQL> SELECT C.CUSTOMER_ID,
  2         C.FIRST_NAME,
  3         C.LAST_NAME,
  4         O.ORDER_ID,
  5         P.PRODUCT_ID,
  6         P.PRODUCT_NAME,
  7         OI.QUANTITY,
  8         OI.UNIT_PRICE
  9  FROM CUSTOMER C
 10  INNER JOIN ORDERS O
 11  ON C.CUSTOMER_ID = O.CUSTOMER_ID
 12  INNER JOIN ORDER_ITEM OI
 13  ON O.ORDER_ID = OI.ORDER_ID
 14  INNER JOIN PRODUCT P
 15  ON OI.PRODUCT_ID = P.PRODUCT_ID
 16  ORDER BY C.CUSTOMER_ID;

CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME                                            ORDER_ID PRODUCT_ID
-------------------------------------------------- ---------- ----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE
---------- ----------
        101 Arun
Kumar                                                     201        101
Laptop
         1      55000


CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME                                            ORDER_ID PRODUCT_ID
-------------------------------------------------- ---------- ----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE
---------- ----------
        101 Arun
Kumar                                                     208        108
Data Science Book
         1        699


CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME                                            ORDER_ID PRODUCT_ID
-------------------------------------------------- ---------- ----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE
---------- ----------
        102 Priya
Sharma                                                    202        102
Smartphone
         1      25000


CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME                                            ORDER_ID PRODUCT_ID
-------------------------------------------------- ---------- ----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE
---------- ----------
        103 Rahul
Verma                                                     203        103
Headphones
         2       1999


CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME                                            ORDER_ID PRODUCT_ID
-------------------------------------------------- ---------- ----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE
---------- ----------
        104 Sneha
Reddy                                                     204        104
Smart Watch
         1       3499


CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME                                            ORDER_ID PRODUCT_ID
-------------------------------------------------- ---------- ----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE
---------- ----------
        105 Karthik
Raj                                                       205        105
T-Shirt
         2        799


CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME                                            ORDER_ID PRODUCT_ID
-------------------------------------------------- ---------- ----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE
---------- ----------
        106 Divya
Nair                                                      206        106
Jeans
         1       1499


CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME                                            ORDER_ID PRODUCT_ID
-------------------------------------------------- ---------- ----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE
---------- ----------
        107 Vignesh
Mohan                                                     207        107
Python Programming Book
         1        599


8 rows selected.

SQL> SELECT C.CUSTOMER_ID,
  2         C.FIRST_NAME,
  3         C.LAST_NAME,
  4         O.ORDER_ID,
  5         P.PRODUCT_NAME,
  6         OI.QUANTITY,
  7         OI.UNIT_PRICE,
  8         PY.PAYMENT_METHOD,
  9         PY.PAYMENT_STATUS,
 10         PY.AMOUNT
 11  FROM CUSTOMER C
 12  INNER JOIN ORDERS O
 13  ON C.CUSTOMER_ID = O.CUSTOMER_ID
 14  INNER JOIN ORDER_ITEM OI
 15  ON O.ORDER_ID = OI.ORDER_ID
 16  INNER JOIN PRODUCT P
 17  ON OI.PRODUCT_ID = P.PRODUCT_ID
 18  INNER JOIN PAYMENT PY
 19  ON O.ORDER_ID = PY.ORDER_ID
 20  ORDER BY C.CUSTOMER_ID;

CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME                                            ORDER_ID
-------------------------------------------------- ----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE PAYMENT_METHOD                 PAYMENT_STATUS
---------- ---------- ------------------------------ --------------------
    AMOUNT
----------
        101 Arun
Kumar                                                     201
Laptop

CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME                                            ORDER_ID
-------------------------------------------------- ----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE PAYMENT_METHOD                 PAYMENT_STATUS
---------- ---------- ------------------------------ --------------------
    AMOUNT
----------
         1      55000 UPI                            Successful
      1500


CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME                                            ORDER_ID
-------------------------------------------------- ----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE PAYMENT_METHOD                 PAYMENT_STATUS
---------- ---------- ------------------------------ --------------------
    AMOUNT
----------
        101 Arun
Kumar                                                     208
Data Science Book

CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME                                            ORDER_ID
-------------------------------------------------- ----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE PAYMENT_METHOD                 PAYMENT_STATUS
---------- ---------- ------------------------------ --------------------
    AMOUNT
----------
         1        699 Debit Card                     Pending
      2800


CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME                                            ORDER_ID
-------------------------------------------------- ----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE PAYMENT_METHOD                 PAYMENT_STATUS
---------- ---------- ------------------------------ --------------------
    AMOUNT
----------
        102 Priya
Sharma                                                    202
Smartphone

CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME                                            ORDER_ID
-------------------------------------------------- ----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE PAYMENT_METHOD                 PAYMENT_STATUS
---------- ---------- ------------------------------ --------------------
    AMOUNT
----------
         1      25000 Credit Card                    Successful
      2500


CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME                                            ORDER_ID
-------------------------------------------------- ----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE PAYMENT_METHOD                 PAYMENT_STATUS
---------- ---------- ------------------------------ --------------------
    AMOUNT
----------
        103 Rahul
Verma                                                     203
Headphones

CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME                                            ORDER_ID
-------------------------------------------------- ----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE PAYMENT_METHOD                 PAYMENT_STATUS
---------- ---------- ------------------------------ --------------------
    AMOUNT
----------
         2       1999 Debit Card                     Failed
      1800


CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME                                            ORDER_ID
-------------------------------------------------- ----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE PAYMENT_METHOD                 PAYMENT_STATUS
---------- ---------- ------------------------------ --------------------
    AMOUNT
----------
        104 Sneha
Reddy                                                     204
Smart Watch

CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME                                            ORDER_ID
-------------------------------------------------- ----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE PAYMENT_METHOD                 PAYMENT_STATUS
---------- ---------- ------------------------------ --------------------
    AMOUNT
----------
         1       3499 UPI                            Pending
      3000


CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME                                            ORDER_ID
-------------------------------------------------- ----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE PAYMENT_METHOD                 PAYMENT_STATUS
---------- ---------- ------------------------------ --------------------
    AMOUNT
----------
        105 Karthik
Raj                                                       205
T-Shirt

CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME                                            ORDER_ID
-------------------------------------------------- ----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE PAYMENT_METHOD                 PAYMENT_STATUS
---------- ---------- ------------------------------ --------------------
    AMOUNT
----------
         2        799 Cash                           Successful
      1200


CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME                                            ORDER_ID
-------------------------------------------------- ----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE PAYMENT_METHOD                 PAYMENT_STATUS
---------- ---------- ------------------------------ --------------------
    AMOUNT
----------
        106 Divya
Nair                                                      206
Jeans

CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME                                            ORDER_ID
-------------------------------------------------- ----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE PAYMENT_METHOD                 PAYMENT_STATUS
---------- ---------- ------------------------------ --------------------
    AMOUNT
----------
         1       1499 Credit Card                    Failed
      3500


CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME                                            ORDER_ID
-------------------------------------------------- ----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE PAYMENT_METHOD                 PAYMENT_STATUS
---------- ---------- ------------------------------ --------------------
    AMOUNT
----------
        107 Vignesh
Mohan                                                     207
Python Programming Book

CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME                                            ORDER_ID
-------------------------------------------------- ----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE PAYMENT_METHOD                 PAYMENT_STATUS
---------- ---------- ------------------------------ --------------------
    AMOUNT
----------
         1        599 UPI                            Successful
      2200


8 rows selected.

SQL> SELECT C.CUSTOMER_ID,
  2         C.FIRST_NAME,
  3         C.LAST_NAME,
  4         O.ORDER_ID,
  5         P.PRODUCT_NAME,
  6         OI.QUANTITY,
  7         OI.UNIT_PRICE,
  8         O.TOTAL_AMOUNT,
  9         PY.PAYMENT_METHOD,
 10         PY.PAYMENT_STATUS
 11  FROM CUSTOMER C
 12  INNER JOIN ORDERS O
 13  ON C.CUSTOMER_ID = O.CUSTOMER_ID
 14  INNER JOIN ORDER_ITEM OI
 15  ON O.ORDER_ID = OI.ORDER_ID
 16  INNER JOIN PRODUCT P
 17  ON OI.PRODUCT_ID = P.PRODUCT_ID
 18  INNER JOIN PAYMENT PY
 19  ON O.ORDER_ID = PY.ORDER_ID
 20  ORDER BY O.ORDER_ID;

CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME                                            ORDER_ID
-------------------------------------------------- ----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE TOTAL_AMOUNT PAYMENT_METHOD
---------- ---------- ------------ ------------------------------
PAYMENT_STATUS
--------------------
        101 Arun
Kumar                                                     201
Laptop

CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME                                            ORDER_ID
-------------------------------------------------- ----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE TOTAL_AMOUNT PAYMENT_METHOD
---------- ---------- ------------ ------------------------------
PAYMENT_STATUS
--------------------
         1      55000         1500 UPI
Successful


CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME                                            ORDER_ID
-------------------------------------------------- ----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE TOTAL_AMOUNT PAYMENT_METHOD
---------- ---------- ------------ ------------------------------
PAYMENT_STATUS
--------------------
        102 Priya
Sharma                                                    202
Smartphone

CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME                                            ORDER_ID
-------------------------------------------------- ----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE TOTAL_AMOUNT PAYMENT_METHOD
---------- ---------- ------------ ------------------------------
PAYMENT_STATUS
--------------------
         1      25000         2500 Credit Card
Successful


CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME                                            ORDER_ID
-------------------------------------------------- ----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE TOTAL_AMOUNT PAYMENT_METHOD
---------- ---------- ------------ ------------------------------
PAYMENT_STATUS
--------------------
        103 Rahul
Verma                                                     203
Headphones

CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME                                            ORDER_ID
-------------------------------------------------- ----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE TOTAL_AMOUNT PAYMENT_METHOD
---------- ---------- ------------ ------------------------------
PAYMENT_STATUS
--------------------
         2       1999         1800 Debit Card
Failed


CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME                                            ORDER_ID
-------------------------------------------------- ----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE TOTAL_AMOUNT PAYMENT_METHOD
---------- ---------- ------------ ------------------------------
PAYMENT_STATUS
--------------------
        104 Sneha
Reddy                                                     204
Smart Watch

CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME                                            ORDER_ID
-------------------------------------------------- ----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE TOTAL_AMOUNT PAYMENT_METHOD
---------- ---------- ------------ ------------------------------
PAYMENT_STATUS
--------------------
         1       3499         3000 UPI
Pending


CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME                                            ORDER_ID
-------------------------------------------------- ----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE TOTAL_AMOUNT PAYMENT_METHOD
---------- ---------- ------------ ------------------------------
PAYMENT_STATUS
--------------------
        105 Karthik
Raj                                                       205
T-Shirt

CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME                                            ORDER_ID
-------------------------------------------------- ----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE TOTAL_AMOUNT PAYMENT_METHOD
---------- ---------- ------------ ------------------------------
PAYMENT_STATUS
--------------------
         2        799         1200 Cash
Successful


CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME                                            ORDER_ID
-------------------------------------------------- ----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE TOTAL_AMOUNT PAYMENT_METHOD
---------- ---------- ------------ ------------------------------
PAYMENT_STATUS
--------------------
        106 Divya
Nair                                                      206
Jeans

CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME                                            ORDER_ID
-------------------------------------------------- ----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE TOTAL_AMOUNT PAYMENT_METHOD
---------- ---------- ------------ ------------------------------
PAYMENT_STATUS
--------------------
         1       1499         3500 Credit Card
Failed


CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME                                            ORDER_ID
-------------------------------------------------- ----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE TOTAL_AMOUNT PAYMENT_METHOD
---------- ---------- ------------ ------------------------------
PAYMENT_STATUS
--------------------
        107 Vignesh
Mohan                                                     207
Python Programming Book

CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME                                            ORDER_ID
-------------------------------------------------- ----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE TOTAL_AMOUNT PAYMENT_METHOD
---------- ---------- ------------ ------------------------------
PAYMENT_STATUS
--------------------
         1        599         2200 UPI
Successful


CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME                                            ORDER_ID
-------------------------------------------------- ----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE TOTAL_AMOUNT PAYMENT_METHOD
---------- ---------- ------------ ------------------------------
PAYMENT_STATUS
--------------------
        101 Arun
Kumar                                                     208
Data Science Book

CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME                                            ORDER_ID
-------------------------------------------------- ----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE TOTAL_AMOUNT PAYMENT_METHOD
---------- ---------- ------------ ------------------------------
PAYMENT_STATUS
--------------------
         1        699         2800 Debit Card
Pending


8 rows selected.

SQL> SELECT PY.PAYMENT_ID,
  2         PY.ORDER_ID,
  3         C.CUSTOMER_ID,
  4         C.FIRST_NAME,
  5         C.LAST_NAME,
  6         PY.PAYMENT_METHOD,
  7         PY.PAYMENT_STATUS,
  8         PY.PAYMENT_DATE,
  9         PY.TRANSACTION_ID,
 10         PY.AMOUNT
 11  FROM PAYMENT PY
 12  INNER JOIN ORDERS O
 13  ON PY.ORDER_ID = O.ORDER_ID
 14  INNER JOIN CUSTOMER C
 15  ON O.CUSTOMER_ID = C.CUSTOMER_ID
 16  ORDER BY PY.PAYMENT_ID;

PAYMENT_ID   ORDER_ID CUSTOMER_ID
---------- ---------- -----------
FIRST_NAME
--------------------------------------------------
LAST_NAME
--------------------------------------------------
PAYMENT_METHOD                 PAYMENT_STATUS       PAYMENT_D
------------------------------ -------------------- ---------
TRANSACTION_ID                     AMOUNT
------------------------------ ----------
       501        201         101
Arun
Kumar

PAYMENT_ID   ORDER_ID CUSTOMER_ID
---------- ---------- -----------
FIRST_NAME
--------------------------------------------------
LAST_NAME
--------------------------------------------------
PAYMENT_METHOD                 PAYMENT_STATUS       PAYMENT_D
------------------------------ -------------------- ---------
TRANSACTION_ID                     AMOUNT
------------------------------ ----------
UPI                            Successful           10-JAN-26
TXN501                               1500


PAYMENT_ID   ORDER_ID CUSTOMER_ID
---------- ---------- -----------
FIRST_NAME
--------------------------------------------------
LAST_NAME
--------------------------------------------------
PAYMENT_METHOD                 PAYMENT_STATUS       PAYMENT_D
------------------------------ -------------------- ---------
TRANSACTION_ID                     AMOUNT
------------------------------ ----------
       502        202         102
Priya
Sharma

PAYMENT_ID   ORDER_ID CUSTOMER_ID
---------- ---------- -----------
FIRST_NAME
--------------------------------------------------
LAST_NAME
--------------------------------------------------
PAYMENT_METHOD                 PAYMENT_STATUS       PAYMENT_D
------------------------------ -------------------- ---------
TRANSACTION_ID                     AMOUNT
------------------------------ ----------
Credit Card                    Successful           11-JAN-26
TXN502                               2500


PAYMENT_ID   ORDER_ID CUSTOMER_ID
---------- ---------- -----------
FIRST_NAME
--------------------------------------------------
LAST_NAME
--------------------------------------------------
PAYMENT_METHOD                 PAYMENT_STATUS       PAYMENT_D
------------------------------ -------------------- ---------
TRANSACTION_ID                     AMOUNT
------------------------------ ----------
       503        203         103
Rahul
Verma

PAYMENT_ID   ORDER_ID CUSTOMER_ID
---------- ---------- -----------
FIRST_NAME
--------------------------------------------------
LAST_NAME
--------------------------------------------------
PAYMENT_METHOD                 PAYMENT_STATUS       PAYMENT_D
------------------------------ -------------------- ---------
TRANSACTION_ID                     AMOUNT
------------------------------ ----------
Debit Card                     Failed               12-JAN-26
TXN503                               1800


PAYMENT_ID   ORDER_ID CUSTOMER_ID
---------- ---------- -----------
FIRST_NAME
--------------------------------------------------
LAST_NAME
--------------------------------------------------
PAYMENT_METHOD                 PAYMENT_STATUS       PAYMENT_D
------------------------------ -------------------- ---------
TRANSACTION_ID                     AMOUNT
------------------------------ ----------
       504        204         104
Sneha
Reddy

PAYMENT_ID   ORDER_ID CUSTOMER_ID
---------- ---------- -----------
FIRST_NAME
--------------------------------------------------
LAST_NAME
--------------------------------------------------
PAYMENT_METHOD                 PAYMENT_STATUS       PAYMENT_D
------------------------------ -------------------- ---------
TRANSACTION_ID                     AMOUNT
------------------------------ ----------
UPI                            Pending              13-JAN-26
TXN504                               3000


PAYMENT_ID   ORDER_ID CUSTOMER_ID
---------- ---------- -----------
FIRST_NAME
--------------------------------------------------
LAST_NAME
--------------------------------------------------
PAYMENT_METHOD                 PAYMENT_STATUS       PAYMENT_D
------------------------------ -------------------- ---------
TRANSACTION_ID                     AMOUNT
------------------------------ ----------
       505        205         105
Karthik
Raj

PAYMENT_ID   ORDER_ID CUSTOMER_ID
---------- ---------- -----------
FIRST_NAME
--------------------------------------------------
LAST_NAME
--------------------------------------------------
PAYMENT_METHOD                 PAYMENT_STATUS       PAYMENT_D
------------------------------ -------------------- ---------
TRANSACTION_ID                     AMOUNT
------------------------------ ----------
Cash                           Successful           14-JAN-26
TXN505                               1200


PAYMENT_ID   ORDER_ID CUSTOMER_ID
---------- ---------- -----------
FIRST_NAME
--------------------------------------------------
LAST_NAME
--------------------------------------------------
PAYMENT_METHOD                 PAYMENT_STATUS       PAYMENT_D
------------------------------ -------------------- ---------
TRANSACTION_ID                     AMOUNT
------------------------------ ----------
       506        206         106
Divya
Nair

PAYMENT_ID   ORDER_ID CUSTOMER_ID
---------- ---------- -----------
FIRST_NAME
--------------------------------------------------
LAST_NAME
--------------------------------------------------
PAYMENT_METHOD                 PAYMENT_STATUS       PAYMENT_D
------------------------------ -------------------- ---------
TRANSACTION_ID                     AMOUNT
------------------------------ ----------
Credit Card                    Failed               15-JAN-26
TXN506                               3500


PAYMENT_ID   ORDER_ID CUSTOMER_ID
---------- ---------- -----------
FIRST_NAME
--------------------------------------------------
LAST_NAME
--------------------------------------------------
PAYMENT_METHOD                 PAYMENT_STATUS       PAYMENT_D
------------------------------ -------------------- ---------
TRANSACTION_ID                     AMOUNT
------------------------------ ----------
       507        207         107
Vignesh
Mohan

PAYMENT_ID   ORDER_ID CUSTOMER_ID
---------- ---------- -----------
FIRST_NAME
--------------------------------------------------
LAST_NAME
--------------------------------------------------
PAYMENT_METHOD                 PAYMENT_STATUS       PAYMENT_D
------------------------------ -------------------- ---------
TRANSACTION_ID                     AMOUNT
------------------------------ ----------
UPI                            Successful           16-JAN-26
TXN507                               2200


PAYMENT_ID   ORDER_ID CUSTOMER_ID
---------- ---------- -----------
FIRST_NAME
--------------------------------------------------
LAST_NAME
--------------------------------------------------
PAYMENT_METHOD                 PAYMENT_STATUS       PAYMENT_D
------------------------------ -------------------- ---------
TRANSACTION_ID                     AMOUNT
------------------------------ ----------
       508        208         101
Arun
Kumar

PAYMENT_ID   ORDER_ID CUSTOMER_ID
---------- ---------- -----------
FIRST_NAME
--------------------------------------------------
LAST_NAME
--------------------------------------------------
PAYMENT_METHOD                 PAYMENT_STATUS       PAYMENT_D
------------------------------ -------------------- ---------
TRANSACTION_ID                     AMOUNT
------------------------------ ----------
Debit Card                     Pending              17-JAN-26
TXN508                               2800


8 rows selected.
