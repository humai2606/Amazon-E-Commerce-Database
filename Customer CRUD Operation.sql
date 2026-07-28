SQL> CREATE TABLE Customer (
  2      Customer_ID NUMBER PRIMARY KEY,
  3      First_Name VARCHAR2(25) NOT NULL,
  4      Last_Name VARCHAR2(25) NOT NULL,
  5      Email VARCHAR2(30) UNIQUE,
  6      Phone_Number VARCHAR2(10) UNIQUE,
  7      Password VARCHAR2(15) NOT NULL,
  8      Gender VARCHAR2(10),
  9      Date_of_Birth DATE,
 10      Address VARCHAR2(80),
 11      City VARCHAR2(30),
 12      State VARCHAR2(30),
 13      Country VARCHAR2(35),
 14      Pincode VARCHAR2(10),
 15      Registration_Date DATE
 16  );

Table created.

INSERT INTO Customer VALUES                                                                                                                        
  2  (101,'Arun','Kumar','arun@gmail.com','9876543210','Arun@123','Male',
  3  TO_DATE('15-05-2000','DD-MM-YYYY'),
  4  '12 Gandhi Street','Chennai','Tamil Nadu','India','600001',
  5  TO_DATE('10-01-2025','DD-MM-YYYY'));

1 row created.

SQL> 
SQL> INSERT INTO Customer VALUES
  2  (102,'Priya','Sharma','priya@gmail.com','9876543211','Priya@123','Female',
  3  TO_DATE('20-08-1999','DD-MM-YYYY'),
  4  '45 Nehru Road','Coimbatore','Tamil Nadu','India','641001',
  5  TO_DATE('12-01-2025','DD-MM-YYYY'));

1 row created.

SQL> 
SQL> INSERT INTO Customer VALUES
  2  (103,'Rahul','Verma','rahul@gmail.com','9876543212','Rahul@123','Male',
  3  TO_DATE('10-02-2001','DD-MM-YYYY'),
  4  '18 Anna Nagar','Madurai','Tamil Nadu','India','625001',
  5  TO_DATE('15-01-2025','DD-MM-YYYY'));

1 row created.

SQL> 
SQL> INSERT INTO Customer VALUES
  2  (104,'Divya','Rani','divya@gmail.com','9876543213','Divya@123','Female',
  3  TO_DATE('25-11-2002','DD-MM-YYYY'),
  4  '67 Lake View','Salem','Tamil Nadu','India','636001',
  5  TO_DATE('18-01-2025','DD-MM-YYYY'));

1 row created.

SQL> 
SQL> INSERT INTO Customer VALUES
  2  (105,'Kavin','Raj','kavin@gmail.com','9876543214','Kavin@123','Male',
  3  TO_DATE('30-06-2000','DD-MM-YYYY'),
  4  '9 Temple Road','Trichy','Tamil Nadu','India','620001',
  5  TO_DATE('20-01-2025','DD-MM-YYYY'));

1 row created.

SQL> 
SQL> INSERT INTO Customer VALUES
  2  (106,'Sneha','Patel','sneha@gmail.com','9876543215','Sneha@123','Female',
  3  TO_DATE('12-09-2001','DD-MM-YYYY'),
  4  '22 Green Park','Bengaluru','Karnataka','India','560001',
  5  TO_DATE('22-01-2025','DD-MM-YYYY'));

1 row created.

SQL> 
SQL> INSERT INTO Customer VALUES
  2  (107,'Vikram','Singh','vikram@gmail.com','9876543216','Vikram@123','Male',
  3  TO_DATE('08-03-1998','DD-MM-YYYY'),
  4  '14 MG Road','Hyderabad','Telangana','India','500001',
  5  TO_DATE('24-01-2025','DD-MM-YYYY'));

1 row created.

SQL> 
SQL> INSERT INTO Customer VALUES
  2  (108,'Anitha','Das','anitha@gmail.com','9876543217','Anitha@123','Female',
  3  TO_DATE('18-12-2003','DD-MM-YYYY'),
  4  '78 Beach Road','Visakhapatnam','Andhra Pradesh','India','530001',
  5  TO_DATE('25-01-2025','DD-MM-YYYY'));

1 row created.

SQL> 
SQL> INSERT INTO Customer VALUES
  2  (109,'Mohan','Rao','mohan@gmail.com','9876543218','Mohan@123','Male',
  3  TO_DATE('05-07-1997','DD-MM-YYYY'),
  4  '31 Park Avenue','Pune','Maharashtra','India','411001',
  5  TO_DATE('27-01-2025','DD-MM-YYYY'));

1 row created.

SQL> 
SQL> INSERT INTO Customer VALUES
  2  (110,'Nisha','Joseph','nisha@gmail.com','9876543219','Nisha@123','Female',
  3  TO_DATE('14-10-2002','DD-MM-YYYY'),
  4  '56 Hill Street','Kochi','Kerala','India','682001',
  5  TO_DATE('30-01-2025','DD-MM-YYYY'));

1 row created.

SQL> SELECT Customer_ID, First_Name, Email
  2  FROM Customer;                                       

CUSTOMER_ID FIRST_NAME                EMAIL
----------- ------------------------- ------------------------------
        101 Arun                      arun@gmail.com
        102 Priya                     priya@gmail.com
        103 Rahul                     rahul@gmail.com
        104 Divya                     divya@gmail.com
        105 Kavin                     kavin@gmail.com
        106 Sneha                     sneha@gmail.com
        107 Vikram                    vikram@gmail.com
        108 Anitha                    anitha@gmail.com
        109 Mohan                     mohan@gmail.com
        110 Nisha                     nisha@gmail.com

10 rows selected.

SQL> SELECT *
  2  FROM Customer
  3  WHERE Customer_ID = 105;

CUSTOMER_ID FIRST_NAME                LAST_NAME
----------- ------------------------- -------------------------
EMAIL                          PHONE_NUMB PASSWORD        GENDER     DATE_OF_B
------------------------------ ---------- --------------- ---------- ---------
ADDRESS
--------------------------------------------------------------------------------
CITY                           STATE
------------------------------ ------------------------------
COUNTRY                             PINCODE    REGISTRAT
----------------------------------- ---------- ---------
        105 Kavin                     Raj
kavin@gmail.com                9876543214 Kavin@123       Male       30-JUN-00
9 Temple Road

CUSTOMER_ID FIRST_NAME                LAST_NAME
----------- ------------------------- -------------------------
EMAIL                          PHONE_NUMB PASSWORD        GENDER     DATE_OF_B
------------------------------ ---------- --------------- ---------- ---------
ADDRESS
--------------------------------------------------------------------------------
CITY                           STATE
------------------------------ ------------------------------
COUNTRY                             PINCODE    REGISTRAT
----------------------------------- ---------- ---------
Trichy                         Tamil Nadu
India                               620001     20-JAN-25


SQL> UPDATE Customer
  2  SET Phone_Number = '9876543299'
  3  WHERE Customer_ID = 103;

1 row updated.

SQL> UPDATE Customer
  2  SET Email = 'newemail@gmail.com'
  3  WHERE Customer_ID = 102;

1 row updated.

SQL> DELETE FROM Customer
  2  WHERE Customer_ID = 110;

1 row deleted.

SQL> SELECT * FROM Customer;

CUSTOMER_ID FIRST_NAME                LAST_NAME
----------- ------------------------- -------------------------
EMAIL                          PHONE_NUMB PASSWORD        GENDER     DATE_OF_B
------------------------------ ---------- --------------- ---------- ---------
ADDRESS
--------------------------------------------------------------------------------
CITY                           STATE
------------------------------ ------------------------------
COUNTRY                             PINCODE    REGISTRAT
----------------------------------- ---------- ---------
        101 Arun                      Kumar
arun@gmail.com                 9876543210 Arun@123        Male       15-MAY-00
12 Gandhi Street

CUSTOMER_ID FIRST_NAME                LAST_NAME
----------- ------------------------- -------------------------
EMAIL                          PHONE_NUMB PASSWORD        GENDER     DATE_OF_B
------------------------------ ---------- --------------- ---------- ---------
ADDRESS
--------------------------------------------------------------------------------
CITY                           STATE
------------------------------ ------------------------------
COUNTRY                             PINCODE    REGISTRAT
----------------------------------- ---------- ---------
Chennai                        Tamil Nadu
India                               600001     10-JAN-25


CUSTOMER_ID FIRST_NAME                LAST_NAME
----------- ------------------------- -------------------------
EMAIL                          PHONE_NUMB PASSWORD        GENDER     DATE_OF_B
------------------------------ ---------- --------------- ---------- ---------
ADDRESS
--------------------------------------------------------------------------------
CITY                           STATE
------------------------------ ------------------------------
COUNTRY                             PINCODE    REGISTRAT
----------------------------------- ---------- ---------
        102 Priya                     Sharma
newemail@gmail.com             9876543211 Priya@123       Female     20-AUG-99
45 Nehru Road

CUSTOMER_ID FIRST_NAME                LAST_NAME
----------- ------------------------- -------------------------
EMAIL                          PHONE_NUMB PASSWORD        GENDER     DATE_OF_B
------------------------------ ---------- --------------- ---------- ---------
ADDRESS
--------------------------------------------------------------------------------
CITY                           STATE
------------------------------ ------------------------------
COUNTRY                             PINCODE    REGISTRAT
----------------------------------- ---------- ---------
Coimbatore                     Tamil Nadu
India                               641001     12-JAN-25


CUSTOMER_ID FIRST_NAME                LAST_NAME
----------- ------------------------- -------------------------
EMAIL                          PHONE_NUMB PASSWORD        GENDER     DATE_OF_B
------------------------------ ---------- --------------- ---------- ---------
ADDRESS
--------------------------------------------------------------------------------
CITY                           STATE
------------------------------ ------------------------------
COUNTRY                             PINCODE    REGISTRAT
----------------------------------- ---------- ---------
        103 Rahul                     Verma
rahul@gmail.com                9876543299 Rahul@123       Male       10-FEB-01
18 Anna Nagar

CUSTOMER_ID FIRST_NAME                LAST_NAME
----------- ------------------------- -------------------------
EMAIL                          PHONE_NUMB PASSWORD        GENDER     DATE_OF_B
------------------------------ ---------- --------------- ---------- ---------
ADDRESS
--------------------------------------------------------------------------------
CITY                           STATE
------------------------------ ------------------------------
COUNTRY                             PINCODE    REGISTRAT
----------------------------------- ---------- ---------
Madurai                        Tamil Nadu
India                               625001     15-JAN-25


CUSTOMER_ID FIRST_NAME                LAST_NAME
----------- ------------------------- -------------------------
EMAIL                          PHONE_NUMB PASSWORD        GENDER     DATE_OF_B
------------------------------ ---------- --------------- ---------- ---------
ADDRESS
--------------------------------------------------------------------------------
CITY                           STATE
------------------------------ ------------------------------
COUNTRY                             PINCODE    REGISTRAT
----------------------------------- ---------- ---------
        104 Divya                     Rani
divya@gmail.com                9876543213 Divya@123       Female     25-NOV-02
67 Lake View

CUSTOMER_ID FIRST_NAME                LAST_NAME
----------- ------------------------- -------------------------
EMAIL                          PHONE_NUMB PASSWORD        GENDER     DATE_OF_B
------------------------------ ---------- --------------- ---------- ---------
ADDRESS
--------------------------------------------------------------------------------
CITY                           STATE
------------------------------ ------------------------------
COUNTRY                             PINCODE    REGISTRAT
----------------------------------- ---------- ---------
Salem                          Tamil Nadu
India                               636001     18-JAN-25


CUSTOMER_ID FIRST_NAME                LAST_NAME
----------- ------------------------- -------------------------
EMAIL                          PHONE_NUMB PASSWORD        GENDER     DATE_OF_B
------------------------------ ---------- --------------- ---------- ---------
ADDRESS
--------------------------------------------------------------------------------
CITY                           STATE
------------------------------ ------------------------------
COUNTRY                             PINCODE    REGISTRAT
----------------------------------- ---------- ---------
        105 Kavin                     Raj
kavin@gmail.com                9876543214 Kavin@123       Male       30-JUN-00
9 Temple Road

CUSTOMER_ID FIRST_NAME                LAST_NAME
----------- ------------------------- -------------------------
EMAIL                          PHONE_NUMB PASSWORD        GENDER     DATE_OF_B
------------------------------ ---------- --------------- ---------- ---------
ADDRESS
--------------------------------------------------------------------------------
CITY                           STATE
------------------------------ ------------------------------
COUNTRY                             PINCODE    REGISTRAT
----------------------------------- ---------- ---------
Trichy                         Tamil Nadu
India                               620001     20-JAN-25


CUSTOMER_ID FIRST_NAME                LAST_NAME
----------- ------------------------- -------------------------
EMAIL                          PHONE_NUMB PASSWORD        GENDER     DATE_OF_B
------------------------------ ---------- --------------- ---------- ---------
ADDRESS
--------------------------------------------------------------------------------
CITY                           STATE
------------------------------ ------------------------------
COUNTRY                             PINCODE    REGISTRAT
----------------------------------- ---------- ---------
        106 Sneha                     Patel
sneha@gmail.com                9876543215 Sneha@123       Female     12-SEP-01
22 Green Park

CUSTOMER_ID FIRST_NAME                LAST_NAME
----------- ------------------------- -------------------------
EMAIL                          PHONE_NUMB PASSWORD        GENDER     DATE_OF_B
------------------------------ ---------- --------------- ---------- ---------
ADDRESS
--------------------------------------------------------------------------------
CITY                           STATE
------------------------------ ------------------------------
COUNTRY                             PINCODE    REGISTRAT
----------------------------------- ---------- ---------
Bengaluru                      Karnataka
India                               560001     22-JAN-25


CUSTOMER_ID FIRST_NAME                LAST_NAME
----------- ------------------------- -------------------------
EMAIL                          PHONE_NUMB PASSWORD        GENDER     DATE_OF_B
------------------------------ ---------- --------------- ---------- ---------
ADDRESS
--------------------------------------------------------------------------------
CITY                           STATE
------------------------------ ------------------------------
COUNTRY                             PINCODE    REGISTRAT
----------------------------------- ---------- ---------
        107 Vikram                    Singh
vikram@gmail.com               9876543216 Vikram@123      Male       08-MAR-98
14 MG Road

CUSTOMER_ID FIRST_NAME                LAST_NAME
----------- ------------------------- -------------------------
EMAIL                          PHONE_NUMB PASSWORD        GENDER     DATE_OF_B
------------------------------ ---------- --------------- ---------- ---------
ADDRESS
--------------------------------------------------------------------------------
CITY                           STATE
------------------------------ ------------------------------
COUNTRY                             PINCODE    REGISTRAT
----------------------------------- ---------- ---------
Hyderabad                      Telangana
India                               500001     24-JAN-25


CUSTOMER_ID FIRST_NAME                LAST_NAME
----------- ------------------------- -------------------------
EMAIL                          PHONE_NUMB PASSWORD        GENDER     DATE_OF_B
------------------------------ ---------- --------------- ---------- ---------
ADDRESS
--------------------------------------------------------------------------------
CITY                           STATE
------------------------------ ------------------------------
COUNTRY                             PINCODE    REGISTRAT
----------------------------------- ---------- ---------
        108 Anitha                    Das
anitha@gmail.com               9876543217 Anitha@123      Female     18-DEC-03
78 Beach Road

CUSTOMER_ID FIRST_NAME                LAST_NAME
----------- ------------------------- -------------------------
EMAIL                          PHONE_NUMB PASSWORD        GENDER     DATE_OF_B
------------------------------ ---------- --------------- ---------- ---------
ADDRESS
--------------------------------------------------------------------------------
CITY                           STATE
------------------------------ ------------------------------
COUNTRY                             PINCODE    REGISTRAT
----------------------------------- ---------- ---------
Visakhapatnam                  Andhra Pradesh
India                               530001     25-JAN-25


CUSTOMER_ID FIRST_NAME                LAST_NAME
----------- ------------------------- -------------------------
EMAIL                          PHONE_NUMB PASSWORD        GENDER     DATE_OF_B
------------------------------ ---------- --------------- ---------- ---------
ADDRESS
--------------------------------------------------------------------------------
CITY                           STATE
------------------------------ ------------------------------
COUNTRY                             PINCODE    REGISTRAT
----------------------------------- ---------- ---------
        109 Mohan                     Rao
mohan@gmail.com                9876543218 Mohan@123       Male       05-JUL-97
31 Park Avenue

CUSTOMER_ID FIRST_NAME                LAST_NAME
----------- ------------------------- -------------------------
EMAIL                          PHONE_NUMB PASSWORD        GENDER     DATE_OF_B
------------------------------ ---------- --------------- ---------- ---------
ADDRESS
--------------------------------------------------------------------------------
CITY                           STATE
------------------------------ ------------------------------
COUNTRY                             PINCODE    REGISTRAT
----------------------------------- ---------- ---------
Pune                           Maharashtra
India                               411001     27-JAN-25


9 rows selected.
