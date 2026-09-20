# Amazon E-Commerce Database Management System

## Project Overview

The Amazon E-Commerce Database Management System is a relational database project developed using Oracle SQL and SQL*Plus.

This project focuses on managing product, category, seller, warehouse, and inventory information in a structured database. It establishes relationships between sellers, products, stock, and warehouses and provides inventory status reports.

## DBMS Task

1. Create Seller and Inventory tables.
2. Establish relationships between sellers, products, and stock.
3. Maintain seller product information.
4. Track available and unavailable products.
5. Generate inventory status reports.

## Technologies Used

- Oracle Database
- SQL
- SQL*Plus

## Database Tables

### Category

Stores product category information.

Attributes:
- Category_ID - Primary Key
- Category_Name - Unique
- Description

### Product

Stores product details and category and seller relationships.

Attributes:
- Product_ID - Primary Key
- Product_Name
- Category_ID - Foreign Key
- Price
- Stock
- Seller_ID - Foreign Key

### Seller

Stores seller and business information.

Attributes:
- Seller_ID - Primary Key
- Seller_Name
- Business_Name
- Email
- Phone_Number
- GST_Number
- Address
- Rating

### Warehouse

Stores warehouse information.

Attributes:
- Warehouse_ID - Primary Key
- Warehouse_Name
- Location
- Capacity

### Inventory

Stores product stock information for warehouses.

Attributes:
- Inventory_ID - Primary Key
- Product_ID - Foreign Key
- Warehouse_ID - Foreign Key
- Available_Stock
- Last_Updated

## Table Relationships

- One Category can have many Products.
- One Seller can sell many Products.
- One Product can have inventory records.
- One Warehouse can contain many inventory records.

Relationship flow:

Category → Product ← Seller

Product → Inventory ← Warehouse

## Operations Performed

### Table Creation

- Created Category table
- Created Product table
- Created Seller table
- Created Warehouse table
- Created Inventory table

### Data Insertion

- Inserted category records
- Inserted product records
- Inserted seller records
- Inserted warehouse records
- Inserted inventory records

### Seller Product Information

A JOIN query was used to display:

- Seller ID
- Seller Name
- Product ID
- Product Name
- Available Stock

### Inventory Status

Available products and unavailable products were identified based on stock quantity.

- Available Product: Available_Stock > 0
- Unavailable Product: Available_Stock = 0

## Inventory Reports

The following reports were generated:

### 1. Complete Inventory Report

Displays product, seller, stock, warehouse, and last updated information.

### 2. Available and Unavailable Product Count

Displays the number of available and unavailable products.

### 3. Total Stock by Seller

Displays the total available stock for each seller.

### 4. Products with Zero Stock

Displays products whose available stock is zero.

## SQL Concepts Used

- CREATE TABLE
- INSERT
- SELECT
- ALTER TABLE
- UPDATE
- PRIMARY KEY
- FOREIGN KEY
- UNIQUE Constraint
- JOIN
- WHERE
- GROUP BY
- COUNT()
- SUM()
- UNION ALL
- CASE

## Purpose of the Project

The project demonstrates how a relational database can be used to manage seller, product, warehouse, and inventory information efficiently. It also demonstrates database relationships, SQL operations, and inventory reporting using Oracle SQL*Plus.

## Conclusion

The Amazon E-Commerce Database Management System provides a structured way to manage seller, product, category, warehouse, and inventory data. The project establishes relationships between related tables and generates useful inventory status reports for better data management and retrieval.

## Tools

Oracle SQL*Plus

## Project Type

DBMS Academic Project

##Author
Humairul jashira M
Bsc csc with Ai
