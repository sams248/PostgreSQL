GRANT CONNECT ON DATABASE northwind TO accounting;
GRANT CONNECT ON DATABASE northwind TO hr;

//now we can connect to northwind
 psql -U suzy

 //still can't create schema
CREATE SCHEMA suzy;

//allow accounting to create schemas
GRANT CREATE ON DATABASE northwind TO accounting;

//now suzy can create schema
CREATE SCHEMA suzy;

GRANT CONNECT ON DATABASE northwind TO sales;
GRANT CREATE ON DATABASE northwind TO sales;
