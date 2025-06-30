# SQL Joins Practice – MySQL Workbench

## 📌 Task 5: SQL Joins (Inner, Left, Right, Full)

**Objective**: Learn and demonstrate how to combine data from multiple tables using different types of SQL joins.

**Tools Used**:  
- MySQL Workbench 8.0 CE  
- SQL (Structured Query Language)

---

## 🛠️ Tables Used

### 1. `Customers`
| Column Name   | Data Type      |
|---------------|----------------|
| CustomerID    | INT (Primary Key) |
| CustomerName  | VARCHAR(100)   |
| City          | VARCHAR(50)    |

### 2. `Orders`
| Column Name   | Data Type         |
|---------------|-------------------|
| OrderID       | INT (Primary Key) |
| CustomerID    | INT (Foreign Key) |
| OrderDate     | DATE              |
| Amount        | DECIMAL(10, 2)    |

