SQL> CREATE TABLE Payment (
  2      Payment_ID NUMBER PRIMARY KEY,
  3      Order_ID NUMBER,
  4      Payment_Method VARCHAR2(30),
  5      Payment_Status VARCHAR2(20),
  6      Payment_Date DATE,
  7      Transaction_ID VARCHAR2(30) UNIQUE,
  8      Amount NUMBER(10,2),
  9      CONSTRAINT fk_payment_order
 10          FOREIGN KEY (Order_ID)
 11          REFERENCES Orders(Order_ID)
 12  );

Table created.

SQL> INSERT INTO Payment VALUES
  2  (501, 201, 'UPI', 'Successful', DATE '2026-01-10', 'TXN501', 1500);

1 row created.

SQL>
SQL> INSERT INTO Payment VALUES
  2  (502, 202, 'Credit Card', 'Successful', DATE '2026-01-11', 'TXN502', 2500);

1 row created.

SQL>
SQL> INSERT INTO Payment VALUES
  2  (503, 203, 'Debit Card', 'Failed', DATE '2026-01-12', 'TXN503', 1800);

1 row created.

SQL>
SQL> INSERT INTO Payment VALUES
  2  (504, 204, 'UPI', 'Pending', DATE '2026-01-13', 'TXN504', 3000);

1 row created.

SQL>
SQL> INSERT INTO Payment VALUES
  2  (505, 205, 'Cash', 'Successful', DATE '2026-01-14', 'TXN505', 1200);

1 row created.

SQL>
SQL> INSERT INTO Payment VALUES
  2  (506, 206, 'Credit Card', 'Failed', DATE '2026-01-15', 'TXN506', 3500);

1 row created.

SQL>
SQL> INSERT INTO Payment VALUES
  2  (507, 207, 'UPI', 'Successful', DATE '2026-01-16', 'TXN507', 2200);

1 row created.

SQL>
SQL> INSERT INTO Payment VALUES
  2  (508, 208, 'Debit Card', 'Pending', DATE '2026-01-17', 'TXN508', 2800);

1 row created.

SQL>
SQL> COMMIT;

Commit complete.

SQL> SELECT Payment_ID, Order_ID, Payment_Method,
  2         Payment_Date, Amount
  3  FROM Payment
  4  WHERE Payment_Status = 'Successful'
  5  ORDER BY Payment_Date;

PAYMENT_ID   ORDER_ID PAYMENT_METHOD                 PAYMENT_D     AMOUNT
---------- ---------- ------------------------------ --------- ----------
       501        201 UPI                            10-JAN-26       1500
       502        202 Credit Card                    11-JAN-26       2500
       505        205 Cash                           14-JAN-26       1200
       507        207 UPI                            16-JAN-26       2200


SQL> SELECT Payment_ID, Order_ID, Payment_Method,
  2         Payment_Date, Amount
  3  FROM Payment
  4  WHERE Payment_Status = 'Failed'
  5  ORDER BY Payment_Date;

PAYMENT_ID   ORDER_ID PAYMENT_METHOD                 PAYMENT_D     AMOUNT
---------- ---------- ------------------------------ --------- ----------
       503        203 Debit Card                     12-JAN-26       1800
       506        206 Credit Card                    15-JAN-26       3500

SQL> UPDATE Payment
  2  SET Payment_Status = 'Successful'
  3  WHERE Payment_ID = 505;

1 row updated.

SQL>
SQL> COMMIT;

Commit complete.


SQL> SELECT Payment_Method,
  2         COUNT(*) AS Total_Transactions,
  3         SUM(Amount) AS Total_Amount
  4  FROM Payment
  5  GROUP BY Payment_Method
  6  ORDER BY Total_Transactions DESC;

PAYMENT_METHOD                 TOTAL_TRANSACTIONS TOTAL_AMOUNT
------------------------------ ------------------ ------------
UPI                                             3         6700
Credit Card                                     2         6000
Debit Card                                      2         4600
Cash                                            1         1200

SQL> SELECT p.Payment_ID, p.Order_ID, o.Customer_ID,
  2         p.Payment_Method, p.Payment_Status,
  3         p.Payment_Date, p.Amount
  4  FROM Payment p
  5  JOIN Orders o ON p.Order_ID = o.Order_ID
  6  ORDER BY p.Payment_Date, p.Payment_ID;

PAYMENT_ID   ORDER_ID CUSTOMER_ID PAYMENT_METHOD
---------- ---------- ----------- ------------------------------
PAYMENT_STATUS       PAYMENT_D     AMOUNT
-------------------- --------- ----------
       501        201         101 UPI
Successful           10-JAN-26       1500

       502        202         102 Credit Card
Successful           11-JAN-26       2500

       503        203         103 Debit Card
Failed               12-JAN-26       1800


PAYMENT_ID   ORDER_ID CUSTOMER_ID PAYMENT_METHOD
---------- ---------- ----------- ------------------------------
PAYMENT_STATUS       PAYMENT_D     AMOUNT
-------------------- --------- ----------
       504        204         104 UPI
Pending              13-JAN-26       3000

       505        205         105 Cash
Successful           14-JAN-26       1200

       506        206         106 Credit Card
Failed               15-JAN-26       3500


PAYMENT_ID   ORDER_ID CUSTOMER_ID PAYMENT_METHOD
---------- ---------- ----------- ------------------------------
PAYMENT_STATUS       PAYMENT_D     AMOUNT
-------------------- --------- ----------
       507        207         107 UPI
Successful           16-JAN-26       2200

       508        208         101 Debit Card
Pending              17-JAN-26       2800


8 rows selected.
