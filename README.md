# DBMS Weekly Task – Product and Category Database Management System

## Project Overview

This project demonstrates the design and implementation of Product and Category entities using Oracle SQL.

The project includes table creation, primary key and foreign key relationships, data insertion, product updating, product deletion, and category-wise product reporting.

The implementation was performed using Oracle Database 21c Express Edition and SQL*Plus.

## Objectives

* Design the Category and Product tables.
* Define primary key and foreign key relationships.
* Store product details such as product name, category, price, and stock.
* Insert product and category records.
* Update product information.
* Delete product records.
* Generate category-wise product reports.

## Database Environment

* Database: Oracle Database 21c Express Edition
* Tool: SQL*Plus
* Language: SQL

## 1. Category Table

The Category table stores information about different product categories.

### Table Structure

| Column        | Data Type     | Constraint  |
| ------------- | ------------- | ----------- |
| Category_ID   | NUMBER        | PRIMARY KEY |
| Category_Name | VARCHAR2(50)  | UNIQUE      |
| Description   | VARCHAR2(100) | -           |

### SQL Code

```sql
CREATE TABLE Category (
    Category_ID NUMBER PRIMARY KEY,
    Category_Name VARCHAR2(50) UNIQUE,
    Description VARCHAR2(100)
);
```

## 2. Product Table

The Product table stores product details including product name, category, price, and available stock.

### Table Structure

| Column       | Data Type     | Constraint  |
| ------------ | ------------- | ----------- |
| Product_ID   | NUMBER        | PRIMARY KEY |
| Product_Name | VARCHAR2(100) | NOT NULL    |
| Category_ID  | NUMBER        | FOREIGN KEY |
| Price        | NUMBER(10,2)  | NOT NULL    |
| Stock        | NUMBER        | NOT NULL    |

### SQL Code

```sql
CREATE TABLE Product (
    Product_ID NUMBER PRIMARY KEY,
    Product_Name VARCHAR2(100) NOT NULL,
    Category_ID NUMBER,
    Price NUMBER(10,2) NOT NULL,
    Stock NUMBER NOT NULL,
    CONSTRAINT fk_product_category
    FOREIGN KEY (Category_ID)
    REFERENCES Category(Category_ID)
);
```

## 3. Primary Key and Foreign Key Relationship

`Category_ID` is the Primary Key in the Category table.

`Category_ID` is used as a Foreign Key in the Product table and references `Category(Category_ID)`.

This establishes a relationship between the Category and Product tables.

The relationship is:

```text
Category 1 -------- N Product
```

One category can contain multiple products.

## 4. Category Data

The following 10 category records were inserted:

| Category_ID | Category_Name   | Description                       |
| ----------: | --------------- | --------------------------------- |
|           1 | Electronics     | Electronic products               |
|           2 | Clothing        | Clothing and fashion products     |
|           3 | Books           | Books and educational materials   |
|           4 | Home Appliances | Home and kitchen appliances       |
|           5 | Beauty          | Beauty and personal care products |
|           6 | Sports          | Sports and fitness products       |
|           7 | Toys            | Toys and games                    |
|           8 | Grocery         | Food and grocery products         |
|           9 | Footwear        | Shoes and footwear products       |
|          10 | Furniture       | Home and office furniture         |

### SQL Code

```sql
INSERT INTO Category
VALUES (1, 'Electronics', 'Electronic products');

INSERT INTO Category
VALUES (2, 'Clothing', 'Clothing and fashion products');

INSERT INTO Category
VALUES (3, 'Books', 'Books and educational materials');

INSERT INTO Category
VALUES (4, 'Home Appliances', 'Home and kitchen appliances');

INSERT INTO Category
VALUES (5, 'Beauty', 'Beauty and personal care products');

INSERT INTO Category
VALUES (6, 'Sports', 'Sports and fitness products');

INSERT INTO Category
VALUES (7, 'Toys', 'Toys and games');

INSERT INTO Category
VALUES (8, 'Grocery', 'Food and grocery products');

INSERT INTO Category
VALUES (9, 'Footwear', 'Shoes and footwear products');

INSERT INTO Category
VALUES (10, 'Furniture', 'Home and office furniture');
```

## 5. Product Data

The following 10 product records were inserted:

| Product_ID | Product_Name            | Category_ID | Price | Stock |
| ---------: | ----------------------- | ----------: | ----: | ----: |
|        101 | Laptop                  |           1 | 55000 |    10 |
|        102 | Smartphone              |           1 | 25000 |    20 |
|        103 | Headphones              |           1 |  1999 |    30 |
|        104 | Smart Watch             |           1 |  3499 |    15 |
|        105 | T-Shirt                 |           2 |   799 |    50 |
|        106 | Jeans                   |           2 |  1499 |    40 |
|        107 | Python Programming Book |           3 |   599 |    25 |
|        108 | Data Science Book       |           3 |   699 |    20 |
|        109 | Mixer Grinder           |           4 |  3500 |    12 |
|        110 | Electric Kettle         |           4 |  1800 |    18 |

### SQL Code

```sql
INSERT INTO Product
VALUES (101, 'Laptop', 1, 55000, 10);

INSERT INTO Product
VALUES (102, 'Smartphone', 1, 25000, 20);

INSERT INTO Product
VALUES (103, 'Headphones', 1, 1999, 30);

INSERT INTO Product
VALUES (104, 'Smart Watch', 1, 3499, 15);

INSERT INTO Product
VALUES (105, 'T-Shirt', 2, 799, 50);

INSERT INTO Product
VALUES (106, 'Jeans', 2, 1499, 40);

INSERT INTO Product
VALUES (107, 'Python Programming Book', 3, 599, 25);

INSERT INTO Product
VALUES (108, 'Data Science Book', 3, 699, 20);

INSERT INTO Product
VALUES (109, 'Mixer Grinder', 4, 3500, 12);

INSERT INTO Product
VALUES (110, 'Electric Kettle', 4, 1800, 18);
```

## 6. Display Records

### Display Category Records

```sql
SELECT * FROM Category;
```

The query displayed all 10 category records successfully.

### Display Product Records

```sql
SELECT * FROM Product;
```

The query displayed all 10 product records successfully.

## 7. Product Update Operations

### Update Product Price

The price of the Laptop was updated from 55000 to 58000.

```sql
UPDATE Product
SET Price = 58000
WHERE Product_ID = 101;
```

### Update Product Price and Stock

The price and stock of the Headphones were updated.

```sql
UPDATE Product
SET Price = 899,
    Stock = 60
WHERE Product_ID = 103;
```

Both update operations were successfully executed.

## 8. Product Delete Operations

### Delete Data Science Book

```sql
DELETE FROM Product
WHERE Product_ID = 108;
```

One row was deleted successfully.

### Delete Products with Stock Less Than 10

```sql
DELETE FROM Product
WHERE Stock < 10;
```

The result was:

```text
0 rows deleted.
```

This means no product currently had stock less than 10.

### Delete Jeans

```sql
DELETE FROM Product
WHERE Product_ID = 106;
```

One row was deleted successfully.

## 9. Category-wise Product Report

The following query generates a category-wise product report.

```sql
SELECT
    c.Category_Name,
    p.Product_Name,
    p.Price,
    p.Stock
FROM Category c
JOIN Product p
ON c.Category_ID = p.Category_ID
ORDER BY c.Category_Name;
```

The report displays:

* Category Name
* Product Name
* Price
* Stock

The products are arranged according to their category name.

## 10. Final Product Records

After the update and delete operations, 8 product records remained in the Product table.

| Product_ID | Product_Name            | Category_ID | Price | Stock |
| ---------: | ----------------------- | ----------: | ----: | ----: |
|        101 | Laptop                  |           1 | 58000 |    10 |
|        102 | Smartphone              |           1 | 25000 |    20 |
|        103 | Headphones              |           1 |   899 |    60 |
|        104 | Smart Watch             |           1 |  3499 |    15 |
|        105 | T-Shirt                 |           2 |   799 |    50 |
|        107 | Python Programming Book |           3 |   599 |    25 |
|        109 | Mixer Grinder           |           4 |  3500 |    12 |
|        110 | Electric Kettle         |           4 |  1800 |    18 |

## 11. Result

The Category and Product tables were successfully created using Oracle SQL.

The primary key and foreign key relationships were successfully established. Category and product records were inserted successfully.

Product records were successfully updated and deleted. A category-wise product report was also generated using the JOIN operation.

## 12. Conclusion

Thus, the Product and Category database was successfully designed and implemented using Oracle SQL.

The project demonstrates basic DBMS operations including table creation, primary key, foreign key, insertion, updating, deletion, and category-wise reporting.

## 13. Technologies Used

* Oracle Database 21c Express Edition
* SQL*Plus
* SQL
* Relational Database Management System

## 14. Author

**Humairul Jashira M**

B.Sc. Computer Science with Artificial Intelligence
