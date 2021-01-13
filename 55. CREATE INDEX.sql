CREATE UNIQUE INDEX idx_employees_employeeid
ON employees (employeeid);

CREATE INDEX idx_orders_customerid_orderid
ON orders (customerid, orderid);
