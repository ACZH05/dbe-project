-- Active: 1735295076676@@127.0.0.1@3306@dropshipsystem
CREATE DATABASE IF NOT EXISTS dropshipSystem;

CREATE TABLE IF NOT EXISTS Customer (
    customerID VARCHAR(10) PRIMARY KEY CHECK(customerID LIKE 'CUS___'),
    firstName VARCHAR(30) NOT NULL,
    lastName VARCHAR(30) NOT NULL,
    contactNo VARCHAR(11) NOT NULL,
    street VARCHAR(50) NOT NULL,
    city VARCHAR(50) NOT NULL,
    postcode INT NOT NULL
);

CREATE TABLE IF NOT EXISTS basicCustomer (
    customerID VARCHAR(10) PRIMARY KEY CHECK(customerID LIKE 'CUS___'),
    FOREIGN KEY (customerID) REFERENCES Customer(customerID)
);

CREATE TABLE IF NOT EXISTS premiumCustomer (
    customerID VARCHAR(10) PRIMARY KEY CHECK(customerID LIKE 'CUS___'),
    subscriptionFee FLOAT(8) NOT NULL,
    benefits VARCHAR(50) NOT NULL,
    FOREIGN KEY (customerID) REFERENCES Customer(customerID)
);

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

CREATE TABLE IF NOT EXISTS DropshipOrder
(
    orderID VARCHAR(10) PRIMARY KEY CHECK(orderID LIKE 'O___'),
    orderDate DATE NOT NULL,
    deliveryDate DATE NOT NULL,
    orderstatus VARCHAR(25),
    subtotal FLOAT(8) NOT NULL,
    shippingFee FLOAT(8) NOT NULL,
    taxAmount FLOAT(8) NOT NULL,
    totalAmount FLOAT(8) NOT NULL,
    transactionID VARCHAR(10) NOT NULL,
    transactionDate DATE NOT NULL,
    paymentMethod VARCHAR(25) NOT NULL,
    transactionStatus VARCHAR(25) NOT NULL,
    customerID VARCHAR(10) NOT NULL,
    carrierID VARCHAR(10) NOT NULL
);

ALTER TABLE dropshiporder
ADD CONSTRAINT fk_customerID FOREIGN KEY (customerID)
REFERENCES customer(customerID);

ALTER TABLE dropshiporder
ADD CONSTRAINT fk_carrierID FOREIGN KEY (carrierID)
REFERENCES carrier(carrierID);

CREATE TABLE IF NOT EXISTS contain
(
    orderID VARCHAR(10) PRIMARY KEY,
    productID VARCHAR(10) NOT NULL
);

ALTER TABLE contain
ADD CONSTRAINT fk_orderID FOREIGN KEY (orderID)
REFERENCES dropshiporder(orderID);

ALTER TABLE contain
ADD CONSTRAINT fk_productID FOREIGN KEY (productID)
REFERENCES product(productID);

Create TABLE IF NOT EXISTS Product(
    productID VARCHAR(10) PRIMARY KEY,
    productName VARCHAR(50) NOT NULL,
    price FLOAT(8) NOT NULL,
    quantity VARCHAR(50) NOT NULL,
    supplierID VARCHAR(10)
);
ALTER TABLE Product
ADD CONSTRAINT fk_supplier_id FOREIGN KEY(supplierID) REFERENCES supplier(supplierID);

CREATE TABLE if NOT EXISTS Promotion(
    productID VARCHAR(10) PRIMARY KEY,
    discount FLOAT(8) NOT NULL,
    discountedPrice FLOAT(8) NOT NULL
);

ALTER TABLE Promotion
ADD CONSTRAINT fk_promotion_product_id Foreign KEY(productID) REFERENCES Product(productID);

CREATE TABLE if NOT EXISTS NonPromotion (
    productID VARCHAR(10) PRIMARY KEY
);

ALTER TABLE Nonpromotion
ADD CONSTRAINT fk_nonpromotionproduct_id Foreign KEY(productID) REFERENCES Product(productID);

