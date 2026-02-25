CREATE TABLE retail (
    invoiceno VARCHAR(20),
    stockcode VARCHAR(20),
    description TEXT,
    quantity INT,
    invoicedate TIMESTAMP,
    unitprice NUMERIC(10,2),
    customerid INT,
    country VARCHAR(50)
);

Select *
from retail