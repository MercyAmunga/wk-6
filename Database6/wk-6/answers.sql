
USE salesdb;
SHOW TABLES;
SELECT * FROM employees ;
SELECT 
    employees.firstName,
    employees.lastName,
    employees.email,
    employees.officeCode
FROM employees
INNER JOIN offices ON employees.officeCode = offices.officeCode;


USE salesdb;
SHOW TABLES;
SELECT * FROM products ;

SELECT 
    p.productName,
    p.productVendor,
    p.productLine
FROM 
    products p
LEFT JOIN 
    productlines pl ON p.productLine = pl.productLine;


    USE salesdb;
SHOW TABLES;
SELECT * FROM orders ;
SELECT o.orderDate, o.shippedDate, o.status, o.customerNumber
FROM customers c
RIGHT JOIN orders o ON c.customerNumber = o.customerNumber
LIMIT 10;



