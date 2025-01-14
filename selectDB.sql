-- Active: 1735480258942@@127.0.0.1@3306@dropshipping
--Concatenate
SELECT CONCAT(firstName,' ',lastName) AS fullname
FROM carrier ;

SELECT
CONCAT(street,',',city,',',postcode) AS SupplierAddress
FROM supplier ;

--View Table
SELECT * FROM carrier ;

SELECT * FROM supplier ;

--cd

--md