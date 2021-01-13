SELECT *
FROM orders
NATURAL JOIN order_details;

SELECT *
FROM customers
NATURAL JOIN orders
NATURAL JOIN order_details;


--notice the difference between these two joins
SELECT COUNT(*)
FROM products
NATURAL JOIN order_details;  --this is joining on both productid and unitprice

SELECT COUNT(*)
FROM products
JOIN order_details USING (productid);
