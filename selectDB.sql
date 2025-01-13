--Concatenate
SELECT CONCAT(firstName,' ',lastName) AS fullname
FROM carrier ;

SELECT
CONCAT(street,',',city,',',postcode) AS SupplierAddress
FROM supplier ;

--View Table
SELECT * FROM carrier ;

SELECT * FROM supplier ;