-- Active: 1735295076676@@127.0.0.1@3306@dropshipsystem
CREATE DATABASE IF NOT EXISTS dropshipSystem;

CREATE TABLE IF NOT EXISTS carrier
(
    carrierID VARCHAR(10) PRIMARY KEY CHECK(carrierID LIKE 'C___'),
    firstName VARCHAR(100) NOT NULL,
    lastName VARCHAR(100) NOT NULL,
    contactNo VARCHAR(12) NOT NULL CHECK(contactNo LIKE '0%'),
    email VARCHAR(100)
) ;

CREATE TABLE IF NOT EXISTS supplier
(
    supplierID VARCHAR(10) PRIMARY KEY CHECK(supplierID LIKE 'S___'),
    supplierName VARCHAR(100) NOT NULL,
    contactName VARCHAR(100) NOT NULL,
    contactNo INT NOT NULL CHECK(contactNo LIKE '0%'),
    email VARCHAR(100),
    street VARCHAR(100),
    city VARCHAR(100),
    postcode INT,
    contractStartDate date,
    contractEndDate date
) ;