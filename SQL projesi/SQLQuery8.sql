CREATE VIEW ContactName AS
SELECT 
    CustomerID,
    CompanyName,
    ContactName,
    ContactTitle,
    Phone
FROM 
    Customers;
