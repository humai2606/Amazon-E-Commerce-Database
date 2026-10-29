# Amazon E-Commerce Database

## Project Overview

The Amazon E-Commerce Database is a relational database management system developed using Oracle Database and SQL*Plus.

The project is designed to manage different activities of an e-commerce platform such as customers, sellers, products, orders, payments, inventory, delivery, reviews, ratings, wishlist, returns, and coupons.

---

## Objectives

- To design a structured e-commerce database.
- To identify entities and their relationships.
- To reduce data redundancy.
- To maintain data consistency.
- To manage customer and product information.
- To manage orders and payments.
- To manage inventory and delivery details.
- To store product reviews and ratings.
- To generate useful business reports.
- To understand practical DBMS concepts.

---

# Weekly Work

## Week 1 – Requirement Analysis

The project started with requirement analysis of the Amazon E-Commerce system.

The requirements covered:

- Customer management
- Seller management
- Product management
- Order management
- Payment management
- Inventory management
- Shipping and delivery
- Reviews and ratings
- Returns and refunds
- Wishlist and coupons
- Business reporting

The main stakeholders identified were customers, sellers, administrators, warehouse staff, delivery partners, finance teams, and management.

---

## Week 2 – Entity Analysis

The entities required for the Amazon E-Commerce Database were identified along with their attributes and keys.

### Main Entities

- Customer
- Seller
- Product
- Category
- Brand
- Cart
- Cart Item
- Orders
- Order Item
- Payment
- Shipment
- Delivery Partner
- Warehouse
- Inventory
- Review
- Wishlist
- Return
- Coupon

Primary keys, foreign keys, unique keys, and constraints were identified for the entities.

---

## Week 3 – Functional Dependency and Anomaly Analysis

Functional dependencies were identified for the database tables.

The database was analysed for:

- Functional dependencies
- Data redundancy
- Insertion anomalies
- Update anomalies
- Deletion anomalies
- Normalization

The analysis helped to design a more organized and consistent database.

---

## Week 4 – Database Design

The database structure and relationships between the entities were designed.

The relationships covered:

- Customer and Orders
- Orders and Order Items
- Product and Category
- Product and Inventory
- Orders and Payment
- Orders and Shipment
- Customer and Review
- Product and Review
- Customer and Wishlist
- Orders and Returns

This helped create a proper relational database structure.

---

## Week 5 – Database Implementation

The identified entities were implemented as database tables in Oracle Database.

The tables were created with appropriate:

- Primary keys
- Foreign keys
- Unique constraints
- NOT NULL constraints
- CHECK constraints

Sample data was also added to the database.

---

## Week 6 – Data Management

The database was populated with sample Amazon e-commerce data.

The implemented data included:

- Customer details
- Product details
- Category details
- Order details
- Order item details
- Payment details
- Inventory details
- Other related records

The database was tested using different data management operations.

---

## Week 7 – SQL Query Implementation

Different SQL operations were performed to retrieve and analyse information from the database.

The work included:

- Product searching
- Product filtering
- Product sorting
- Customer information retrieval
- Order information retrieval
- Product availability checking
- Customer order analysis
- Purchase amount analysis
- Business report generation

---

## Week 8 – Payment Details Management

Payment management was implemented as part of the Amazon database.

The payment module includes:

- Payment information
- Payment methods
- Payment status
- Payment dates
- Payment amounts
- Successful payments
- Failed payments
- Payment status modification
- Payment method analysis
- Payment transaction reports

Payment information is connected with customer orders.

---

## Week 9 – Review and Rating Management

The Review and Rating management module was implemented.

### Review Management

Customer reviews were stored with:

- Review ID
- Customer ID
- Product ID
- Review text
- Review date

### Rating Management

Product ratings were stored with:

- Rating ID
- Customer ID
- Product ID
- Rating
- Rating date

The module also includes:

- Retrieving product reviews
- Calculating average ratings
- Identifying highly rated products
- Generating product rating reports

---

## Week 10 – Database Relationship Analysis

Relationships between multiple tables were analysed using different database relationships.

The work included:

- Customer and order relationship
- Order and payment relationship
- Product and order relationship
- Customer purchase history
- Multi-table information retrieval
- Business report generation

This helped understand how information is connected across different tables.

---

## Week 11 – Business Reports and Data Analysis

Different reports were generated from the database to analyse e-commerce activities.

The reports included:

- Product price report
- Customer order report
- Product order report
- Customer-wise order report
- Customer purchase amount report
- Payment transaction report
- Product rating report
- Highly rated product report

These reports help in understanding customer purchases, products, payments, and ratings.

---

## Week 12 – Final Database Integration

All the major modules were combined into the final Amazon E-Commerce Database.

# Tools Used

- Oracle Database
- Oracle SQL
- SQL*Plus

---

# Conclusion

The Amazon E-Commerce Database project was developed progressively from requirement analysis to final database integration.

The project covers customer, seller, product, order, payment, inventory, delivery, review, rating, wishlist, return, and coupon management.

Through this project, practical knowledge of database design, normalization, relationships, SQL operations, data analysis, and business reporting was gained.

The completed system provides a structured and organized approach for managing Amazon e-commerce data.
