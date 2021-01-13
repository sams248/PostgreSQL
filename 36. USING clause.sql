SELECT *
FROM orders
JOIN order_details USING (orderid);


SELECT *
FROM orders
JOIN order_details USING (orderid)
JOIN products USING (productid);
