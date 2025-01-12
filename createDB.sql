-- Active: 1735295076676@@127.0.0.1@3306@dropshipsystem
CREATE DATABASE IF NOT EXISTS dropshipSystem;

CREATE TABLE carrier
(
    carrierID VARCHAR(10) PRIMARY KEY CHECK(carrierID LIKE 'C___'),
    firstName VARCHAR(100) NOT NULL,
    lastName VARCHAR(100) NOT NULL,
    contactNo VARCHAR(12) NOT NULL CHECK(c_contactNo LIKE '0%'),
    email VARCHAR(100)
) ;

INSERT INTO carrier
VALUES
('C001' , 'Taylor' , 'Swift' , 0136715371 , 'taylor@gmail.com'),
('C002' , 'Mohammad' , 'Ali' , 01125343782 , 'mohammad@gmail.com'),
('C003' , 'Jensen' , 'Huang' , 0129889988 , 'jensen@gmail.com'),
('C004' , 'Kyrie' , 'Irving' , 0177279853 , 'kyrie@gmail.com'),
('C005' , 'Leo' , 'Messi' , 01135775377 , 'leo@gmail.com'),
('C006' , 'Tiger' , 'Wood' , 0109988733 , 'tiger@gmail.com'),
('C007' , 'Stephen' , 'Hawking' , 0196472836 , 'stephen@gmail.com'),
('C008' , 'David' , 'Tao' , 01748293728 , 'david@gmail.com'),
('C009' , 'Khalil' , 'Fong' , 0149823573 , 'khalil@gmail.com'),
('C010' , 'Yuuki' , 'Kawamura' , 0174829301 , 'yuuki@gmail.com') ;


CREATE TABLE supplier
(
    supplierID VARCHAR(10) PRIMARY KEY CHECK(supplierID LIKE 'S___'),
    supplierName VARCHAR(100) NOT NULL,
    contactName VARCHAR(100) NOT NULL,
    contactNo INT NOT NULL CHECK(s_contactNo LIKE '0%'),
    email VARCHAR(100),
    street VARCHAR(100),
    city VARCHAR(100),
    postcode INT,
    contractStartDate date,
    contractEndDate date
) ;

INSERT INTO supplier
VALUES
('S001' , 'DinoMart' , 'Hoe Zhi Wan' , 0174829420 , 'dinomart@gmail.com' , '01-01-2022' , '01-01-2026'),
('S002' , '99Speedmart' , 'Lee Thiam Wah' , 0105000099 , 'speedmart@gmail.com' , '01-07-2024' , '01-07-2026'),
('S003' , 'KKmart' , 'Chai Kee Kan' , 0163308495 , 'kkmart@gmail.com' , '01-01-2024' , '01-01-2026'),
('S004' , 'Econsave' , 'Lai Poh Thian' , 0162065069 , 'econsave@gmail.com' , '01-01-2025' , '01-01-2027'),
('S005' , 'JoJoe' , 'Wei How' , 01154252357 , 'jojoe@gmail.com' , '01-01-2022' , '01-01-2025'),
('S006' , 'Mcdonalds' , 'Sheik Fahd' , 0123657324 , 'mcdonald@gmail.com' , '01-07-2025' , '01-07-2029'),
('S007' , 'FireWoods' , 'Akmal Anuar' , 0179899246 , 'firewood@gmail.com' , '01-01-2022' , '01-01-2026'),
('S008' , 'AeonBig' , 'Tsugutoshi Seko' , 075208700 , 'aeonbig@gmail.com' , '01-01-2026' , '01-01-2030');