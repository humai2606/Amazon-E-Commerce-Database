SQL> CREATE TABLE REVIEW (
  2      REVIEW_ID NUMBER PRIMARY KEY,
  3      CUSTOMER_ID NUMBER NOT NULL,
  4      PRODUCT_ID NUMBER NOT NULL,
  5      REVIEW_TEXT VARCHAR2(500) NOT NULL,
  6      REVIEW_DATE DATE NOT NULL
  7  );

Table created.

SQL> CREATE TABLE RATING (
  2      RATING_ID NUMBER PRIMARY KEY,
  3      CUSTOMER_ID NUMBER NOT NULL,
  4      PRODUCT_ID NUMBER NOT NULL,
  5      RATING NUMBER(1) NOT NULL CHECK (RATING BETWEEN 1 AND 5),
  6      RATING_DATE DATE NOT NULL
  7  );

Table created.

SQL> INSERT INTO RATING VALUES
  2  (601,101,101,5,TO_DATE('20-09-2026','DD-MM-YYYY'));

1 row created.

SQL>
SQL> INSERT INTO RATING VALUES
  2  (602,102,102,4,TO_DATE('21-09-2026','DD-MM-YYYY'));

1 row created.

SQL>
SQL> INSERT INTO RATING VALUES
  2  (603,103,103,3,TO_DATE('22-09-2026','DD-MM-YYYY'));

1 row created.

SQL>
SQL> INSERT INTO RATING VALUES
  2  (604,104,101,5,TO_DATE('23-09-2026','DD-MM-YYYY'));

1 row created.

SQL>
SQL> INSERT INTO RATING VALUES
  2  (605,105,104,5,TO_DATE('24-09-2026','DD-MM-YYYY'));

1 row created.

SQL>
SQL> INSERT INTO RATING VALUES
  2  (606,106,102,4,TO_DATE('25-09-2026','DD-MM-YYYY'));

1 row created.

SQL>
SQL> INSERT INTO RATING VALUES
  2  (607,107,105,5,TO_DATE('26-09-2026','DD-MM-YYYY'));

1 row created.


SQL> INSERT INTO REVIEW VALUES
  2  (501,101,101,'Very good product and quality is excellent',
  3  TO_DATE('20-09-2026','DD-MM-YYYY'));

1 row created.

SQL>
SQL> INSERT INTO REVIEW VALUES
  2  (502,102,102,'Good product and worth the price',
  3  TO_DATE('21-09-2026','DD-MM-YYYY'));

1 row created.

SQL>
SQL> INSERT INTO REVIEW VALUES
  2  (503,103,103,'Product quality is average',
  3  TO_DATE('22-09-2026','DD-MM-YYYY'));

1 row created.

SQL>
SQL> INSERT INTO REVIEW VALUES
  2  (504,104,101,'Really useful product. Loved it',
  3  TO_DATE('23-09-2026','DD-MM-YYYY'));

1 row created.

SQL>
SQL> INSERT INTO REVIEW VALUES
  2  (505,105,104,'Amazing product and fast delivery',
  3  TO_DATE('24-09-2026','DD-MM-YYYY'));

1 row created.

SQL>
SQL> INSERT INTO REVIEW VALUES
  2  (506,106,102,'Product is good',
  3  TO_DATE('25-09-2026','DD-MM-YYYY'));

1 row created.

SQL>
SQL> INSERT INTO REVIEW VALUES
  2  (507,107,105,'Excellent quality and packaging',
  3  TO_DATE('26-09-2026','DD-MM-YYYY'));

1 row created.

SQL>
SQL> INSERT INTO REVIEW VALUES
  2  (508,108,103,'Not fully satisfied with the product',
  3  TO_DATE('27-09-2026','DD-MM-YYYY'));

1 row created.

SQL>
SQL> COMMIT;

Commit complete.
