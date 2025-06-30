USE task5;
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(100),
    City VARCHAR(50)
);

CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    OrderDate DATE,
    Amount DECIMAL(10, 2),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

                   -- Customers
INSERT INTO Customers VALUES (1, 'Alice', 'Kolkata');
INSERT INTO Customers VALUES (2, 'Bob', 'Delhi');
INSERT INTO Customers VALUES (3, 'Charlie', 'Mumbai');
INSERT INTO Customers VALUES (4, 'David', 'Chennai');

				    -- Orders
INSERT INTO Orders VALUES (101, 1, '2025-06-01', 500.00);
INSERT INTO Orders VALUES (102, 2, '2025-06-02', 750.00);
INSERT INTO Orders VALUES (103, 1, '2025-06-05', 1200.00);
INSERT INTO Orders VALUES (104, 5, '2025-06-07', 300.00); 


			   
                  -- INNER JOIN --
                  
SELECT Customers.CustomerName, Orders.OrderID, Orders.Amount
FROM Customers
INNER JOIN Orders ON Customers.CustomerID = Orders.CustomerID;


                  -- LEFT JOIN --
                  
SELECT Customers.CustomerName, Orders.OrderID, Orders.Amount
FROM Customers
LEFT JOIN Orders ON Customers.CustomerID = Orders.CustomerID;


				  -- RIGHT JOIN --
                  
SELECT Customers.CustomerName, Orders.OrderID, Orders.Amount
FROM Customers
RIGHT JOIN Orders ON Customers.CustomerID = Orders.CustomerID;


			      -- FULL OUTER JOIN --
                  
SELECT Customers.CustomerName, Orders.OrderID, Orders.Amount
FROM Customers
LEFT JOIN Orders ON Customers.CustomerID = Orders.CustomerID
UNION
SELECT Customers.CustomerName, Orders.OrderID, Orders.Amount
FROM Customers
RIGHT JOIN Orders ON Customers.CustomerID = Orders.CustomerID;




