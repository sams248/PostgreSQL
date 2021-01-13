SELECT companyname
FROM customers
WHERE  customerid = ANY (SELECT customerid FROM orders
                         JOIN order_details ON orders.orderid=order_details.orderid
                         WHERE quantity > 50);

SELECT companyname
FROM suppliers
WHERE  supplierid = ANY (SELECT products.supplierid FROM order_details
                        JOIN products ON products.productid=order_details.productid
                        WHERE quantity = 1);

SELECT DISTINCT productname
FROM products
JOIN order_details ON products.productid=order_details.productid
WHERE  order_details.unitprice*quantity > ALL
	(SELECT AVG(order_details.unitprice*quantity)
             FROM order_details
             GROUP BY productid);

 SELECT DISTINCT companyname
 FROM customers
 JOIN orders ON orders.customerid=customers.customerid
 JOIN order_details ON orders.orderid=order_details.orderid
 WHERE  order_details.unitprice*quantity > ALL
 	(SELECT AVG(order_details.unitprice*quantity)
              FROM order_details
             JOIN orders ON orders.orderid=order_details.orderid
             GROUP BY orders.customerid);
