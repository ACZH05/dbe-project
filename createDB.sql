-- Active: 1735295076676@@127.0.0.1@3306@dropshipsystem
CREATE DATABASE IF NOT EXISTS dropshipSystem;

CREATE TABLE IF NOT EXISTS carrier
(
    carrierID VARCHAR(10) PRIMARY KEY CHECK(carrierID LIKE 'C___'),
    firstName VARCHAR(50)  NOT NULL,
    lastName VARCHAR(50)  NOT NULL,
    contactNo VARCHAR(11)  NOT NULL CHECK(contactNo LIKE '0%'),
    email VARCHAR(50)  NOT NULL
) ;

CREATE TABLE IF NOT EXISTS supplier
(
    supplierID VARCHAR(10) PRIMARY KEY CHECK(supplierID LIKE 'S___'),
    supplierName VARCHAR(50)  NOT NULL,
    contactName VARCHAR(50)  NOT NULL,
    contactNo VARCHAR(11) NOT NULL CHECK(contactNo LIKE '0%'),
    email VARCHAR(50),
    street VARCHAR(50) ,
    city VARCHAR(50) ,
    postcode INT ,
    contractStartDate DATE ,
    contractEndDate DATE ,
    contractDurationInMonth INT 
) ;
