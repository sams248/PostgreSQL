SELECT companyname
FROM customers
UNION
SELECT companyname
FROM suppliers;

SELECT city
FROM customers
UNION ALL
SELECT city
FROM suppliers;

SELECT country
FROM customers
UNION
SELECT country
FROM suppliers
ORDER BY country ASC;

SELECT country
FROM customers
UNION ALL
SELECT country
FROM suppliers
ORDER BY country ASC;
