CREATE TRIGGER trgAfterOrdersInsert
ON Orders
AFTER INSERT
AS
BEGIN
    -- Yeni eklenen siparişlerin bilgilerini denetim tablosuna ekleyelim
    INSERT INTO Orders (OrderID, CustomerID, OrderDate)
    SELECT 
        i.OrderID, 
        i.CustomerID, 
        i.OrderDate
    FROM 
        inserted i;
END;
