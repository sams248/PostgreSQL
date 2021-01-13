SELECT companyname
FROM customers
WHERE country IN (SELECT DISTINCT country
                                    FROM suppliers);

SELECT companyname
FROM suppliers
WHERE city IN (SELECT DISTINCT city
                  FROM customers);

                  
