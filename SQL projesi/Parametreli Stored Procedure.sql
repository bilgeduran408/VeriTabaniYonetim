CREATE PROCEDURE GetCustomerOrdersByDate
    @CustomerID NVARCHAR(5),
    @StartDate DATETIME,
    @EndDate DATETIME
AS
BEGIN
    SELECT 
        o.OrderID,
        o.OrderDate,
        o.RequiredDate,
        o.ShippedDate,
        o.Freight,
        o.ShipName,
        o.ShipAddress,
        o.ShipCity,
        o.ShipRegion,
        o.ShipPostalCode,
        o.ShipCountry
    FROM 
        Orders o
    WHERE 
        o.CustomerID = @CustomerID
        AND o.OrderDate BETWEEN @StartDate AND @EndDate;
END;
