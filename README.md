# Amazon E-Commerce Database Management System

## Author

**Humairul Jashira M**

---

## Project Overview

The Amazon E-Commerce Database Management System is a relational database project developed to manage the major operations of an e-commerce platform using DBMS concepts and Oracle SQL.

The project is developed progressively from requirement analysis and entity identification to database design, functional dependency analysis, anomaly analysis, table creation, data insertion, modification, and report generation.

---

# Week 1 – Requirement Analysis

## Objectives

The main objectives of the Amazon E-Commerce Database Management System are:

- To design a relational database for an e-commerce system.
- To manage customer information.
- To manage seller information.
- To manage products and categories.
- To manage shopping carts.
- To manage customer orders.
- To manage payments and shipments.
- To manage warehouses and inventory.
- To manage reviews and wishlists.
- To manage returns and coupons.
- To maintain data consistency and integrity.
- To generate useful reports.

## Stakeholders

The major stakeholders identified for the system are:

- Customers
- Sellers
- Administrators
- Delivery Partners
- Warehouse Staff

## Functional Requirements

The system should support:

- Customer management
- Seller management
- Product management
- Category management
- Brand management
- Cart management
- Order management
- Payment management
- Shipment management
- Warehouse management
- Inventory management
- Review management
- Wishlist management
- Return management
- Coupon management
- Report generation

## Non-Functional Requirements

The database system should provide:

- Data integrity
- Data consistency
- Security
- Reliability
- Efficient data retrieval
- Scalability
- Reduced data redundancy

---

# Week 2 – Entity Analysis and Relationships

## Entities Identified

The following entities were identified for the Amazon E-Commerce Database:

1. Customer
2. Seller
3. Product
4. Category
5. Brand
6. Cart
7. Cart_Item
8. Order
9. Order_Item
10. Payment
11. Shipment
12. Delivery Partner
13. Warehouse
14. Inventory
15. Review
16. Wishlist
17. Return
18. Coupon

## Primary Keys

Primary keys were identified for each major entity.

Examples:

```text
Customer_ID
Seller_ID
Product_ID
Category_ID
Brand_ID
Cart_ID
Order_ID
OrderItem_ID
Payment_ID
Shipment_ID
Warehouse_ID
Inventory_ID
Review_ID
Wishlist_ID
Return_ID
Coupon_ID

# Week 3 – Functional Dependency and Anomaly Analysis

## Functional Dependency

Functional dependencies were analyzed for the entities in the Amazon E-Commerce Database.

Examples:

- Customer_ID → Customer details
- Seller_ID → Seller details
- Product_ID → Product details
- Category_ID → Category details
- Order_ID → Order details
- OrderItem_ID → Order_Item details

## Redundancy Analysis

The database design was analyzed to identify repeated or unnecessary data.

Reducing redundancy helps to:

- Avoid duplicate data
- Maintain data consistency
- Reduce storage requirements
- Make database updates easier

## Database Anomalies

### Insertion Anomaly

An insertion anomaly occurs when new information cannot be inserted without adding unrelated information.

### Update Anomaly

An update anomaly occurs when the same information is stored in multiple places and must be updated repeatedly.

### Deletion Anomaly

A deletion anomaly occurs when deleting one record unintentionally removes important information.

## Normalization

Normalization concepts were studied to organize the database and reduce redundancy.

The following normal forms were considered:

- First Normal Form (1NF)
- Second Normal Form (2NF)
- Third Normal Form (3NF)


# Week 4 – Orders and Order_Item

## Objectives

1. Design Orders and Order_Item tables.
2. Manage customer product orders.
3. Store order date, quantity, and total amount.
4. Perform order insertion and modification operations.
5. Generate customer order history reports.

## Orders Table

The `Orders` table stores customer order information.

### Table Structure

| Column | Description |
|---|---|
| Order_ID | Primary Key |
| Customer_ID | Foreign Key |
| Order_Date | Date of order |
| Delivery_Date | Delivery date |
| Order_Status | Current order status |
| Total_Amount | Total order amount |

### Orders Records

| Order_ID | Customer_ID | Order_Date | Delivery_Date | Order_Status | Total_Amount |
|---:|---:|---|---|---|---:|
| 201 | 101 | 10-09-2026 | 13-09-2026 | Delivered | 899 |
| 202 | 102 | 11-09-2026 | 15-09-2026 | Shipped | 1299 |
| 203 | 103 | 12-09-2026 | 16-09-2026 | Delivered | 599 |
| 204 | 104 | 13-09-2026 | 17-09-2026 | Shipped | 1499 |
| 205 | 105 | 14-09-2026 | 18-09-2026 | Delivered | 799 |
| 206 | 106 | 15-09-2026 | 19-09-2026 | Shipped | 1099 |
| 207 | 107 | 16-09-2026 | 20-09-2026 | Pending | 699 |
| 208 | 101 | 20-09-2026 | 23-09-2026 | Pending | 999 |

## Order_Item Table

The `Order_Item` table stores the products included in each order.

### Table Structure

| Column | Description |
|---|---|
| OrderItem_ID | Primary Key |
| Order_ID | Foreign Key |
| Product_ID | Foreign Key |
| Quantity | Quantity ordered |
| Unit_Price | Price per unit |

### Order_Item Records

| OrderItem_ID | Order_ID | Product_ID | Quantity | Unit_Price |
|---:|---:|---:|---:|---:|
| 301 | 201 | 101 | 1 | 899 |
| 302 | 201 | 103 | 1 | 1999 |
| 303 | 202 | 102 | 1 | 1299 |
| 304 | 203 | 104 | 1 | 599 |
| 305 | 204 | 105 | 1 | 799 |
| 306 | 205 | 106 | 1 | 799 |
| 307 | 206 | 107 | 1 | 1099 |
| 308 | 207 | 108 | 1 | 699 |

## Foreign Key Relationships

```text
Customer → Orders
Orders → Order_Item
Product → Order_Item
