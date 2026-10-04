# IG TEA – Database Management System

A relational database design and implementation project for **IG TEA**, a tea retail business, built as coursework for **Data Management 1** (NIBM Diploma in Software Engineering, 26.1F).

## Overview

This project covers the full database design process for an online tea store — from conceptual design (ER diagram) through logical design (schema mapping) to physical implementation in SQL Server, including sample data, queries, user roles/permissions, and testing.

## Entities

| Table | Description |
|---|---|
| Category | Tea product categories (Black, Green, Herbal, etc.) |
| Supplier | Suppliers providing products |
| Product | Tea products for sale |
| Customer | Registered customers |
| Orders | Customer orders |
| OrderItem | Line items within each order |
| Payment | Payment records per order (1:1) |
| Delivery | Delivery details per order (1:1) |
| Review | Customer reviews of products |

## Files

| File | Purpose |
|---|---|
| `IGTEA_Database.sql` | Creates the database and all 9 tables with constraints, PKs, and FKs |
| `IGTEA_Inserts.sql` | Inserts 10+ sample records into every table |
| `IGTEA_Queries.sql` | 5 basic SELECT queries, 5 advanced (GROUP BY/HAVING/ORDER BY), 3 JOIN queries |
| `IGTEA_Security.sql` | Creates logins, users, roles (Admin/Staff/Viewer) and grants permissions |
| `IGTEA_Testing.sql` | Tests for role permissions, constraint violations, and data verification |
| `IGTEA_Full_Script.sql` | All of the above combined into a single script, in run order |

## How to Run

1. Open **SQL Server Management Studio (SSMS)**.
2. Open `IGTEA_Full_Script.sql` (or run each file individually in this order):
   1. `IGTEA_Database.sql`
   2. `IGTEA_Inserts.sql`
   3. `IGTEA_Queries.sql`
   4. `IGTEA_Security.sql`
   5. `IGTEA_Testing.sql`
3. Execute (`F5`) section by section.
4. For the security tests, reconnect to SSMS using each login (`igtea_admin`, `igtea_staff`, `igtea_viewer`) to verify role permissions.

## Requirements

- SQL Server (2017 or later recommended)
- SQL Server Management Studio (SSMS)
- "SQL Server and Windows Authentication Mode" enabled (needed for the login-based users in `IGTEA_Security.sql`)

## User Roles

| Role | Access |
|---|---|
| Admin | Full control (db_owner) |
| Staff | Read all tables; write to Orders, OrderItem, Payment, Delivery |
| Viewer | Read-only access to all tables |

## Author

Group coursework project — Data Management 1, NIBM Diploma in Software Engineering (26.1F).
