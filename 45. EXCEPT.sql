SELECT country FROM customers
EXCEPT
SELECT country FROM suppliers;

SELECT COUNT(*) FROM
(SELECT country FROM customers
EXCEPT ALL
SELECT country FROM suppliers) AS same_country;

SELECT city FROM suppliers
EXCEPT
SELECT city FROM customers;

SELECT city
FROM customers
INTERSECT
SELECT city
FROM suppliers
ORDER BY city DESC;

SELECT COUNT(*) FROM
(SELECT city FROM customers
INTERSECT
SELECT city FROM suppliers ) AS same_city;
