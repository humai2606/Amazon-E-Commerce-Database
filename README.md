# Amazon E-Commerce Database Management System

## Database Relationship Analysis Using Joins

This project demonstrates database relationship analysis in an Amazon E-Commerce Database Management System using SQL JOIN operations in Oracle.

The project combines related information from multiple tables such as Customer, Orders, Order Item, Product, and Payment. Different JOIN operations are used to retrieve and analyze related data from the database.

## Objective

The main objective of this project is to understand and implement SQL JOIN operations for analyzing relationships between different tables in an e-commerce database.

## Tables Used

The project uses the following tables:

- CUSTOMER
- ORDERS
- ORDER_ITEM
- PRODUCT
- PAYMENT

## Database Relationships

The main relationships between the tables are:

- CUSTOMER → ORDERS
- ORDERS → ORDER_ITEM
- ORDER_ITEM → PRODUCT
- ORDERS → PAYMENT

These relationships allow customer, order, product, and payment information to be combined using JOIN operations.

## SQL JOIN Operations

### 1. Combining Multiple Tables

Multiple tables are combined using JOIN operations to retrieve related customer, order, product, and payment information.

### 2. INNER JOIN

INNER JOIN returns only the records that have matching values in both tables.

#### 2.1 Customer and Orders

This query combines the CUSTOMER and ORDERS tables to display customer and order information.

#### 2.2 Orders and Payment

This query combines the ORDERS and PAYMENT tables to display order and payment information.

#### 2.3 Product and Order Item

This query combines the PRODUCT and ORDER_ITEM tables to display product and order item information.

### 3. LEFT JOIN

LEFT JOIN returns all records from the left table and matching records from the right table.

#### 3.1 Display All Customers and Their Orders

This query displays all customers along with their corresponding orders.

### 4. RIGHT JOIN

RIGHT JOIN returns all records from the right table and matching records from the left table.

#### 4.1 Display All Orders and Customer Details

This query displays all orders along with the corresponding customer details.

### 5. Complete Order Details

This query combines the CUSTOMER, ORDERS, ORDER_ITEM, PRODUCT, and PAYMENT tables to display complete order information.

### 6. Customer Purchase History

This query displays the products purchased by each customer along with order and quantity details.

### 7. Customer Purchase History with Payment

This query displays customer purchase history along with payment method, payment status, and payment amount.

### 8. Multi-Table Business Report

This query generates a complete customer purchase report by combining customer, order, product, order item, and payment information.

### 9. Payment Transaction Report

This query displays payment transaction details along with the related order and customer information.

## Technologies Used

- Oracle Database
- SQL
- SQL*Plus
- Visual Studio Code
- GitHub

## Project Structure

```text
DATABASE RELATIONSHIP ANALYSIS USING JOINS/
│
├── DATABASE RELATIONSHIP ANALYSIS USING JOINS.sql
└── README.md
```

## Key Concepts Covered

- INNER JOIN
- LEFT JOIN
- RIGHT JOIN
- Multiple Table JOIN
- Customer and Order Relationships
- Product and Order Item Relationships
- Order and Payment Relationships
- Customer Purchase History
- Payment Transaction Analysis
- Multi-Table Business Reports

## Conclusion

This project demonstrates how SQL JOIN operations can be used to analyze relationships between different tables in an Amazon E-Commerce Database Management System. By combining customer, order, product, order item, and payment data, meaningful information can be retrieved from multiple related tables.
