-- Active: 1735295076676@@127.0.0.1@3306@dropshipsystem

SELECT customerID, CONCAT(firstName,' ',lastName) AS fullName
FROM customer ;

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