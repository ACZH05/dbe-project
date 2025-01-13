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

INSERT INTO supplier (supplierID, supplierName, contactName, contactNo, email, street, city, postcode, contractStartDate, contractEndDate, contractDurationInMonth)
VALUES 
('S001', 'DinoMart', 'Hoe Zhi Wan', '0174829420', 'dinomart@gmail.com', 'Jalan Besar 13', 'Butter Worth', 12100, '2022-01-01', '2026-01-01' , TIMESTAMPDIFF(MONTH,'2022-01-01', '2026-01-01')),
('S002', '99Speedmart', 'Lee Thiam Wah', '0105000099', 'speedmart@gmail.com', 'Jalan Pulai Jaya 7', 'Skudai', 81310, '2024-07-01', '2026-07-01', TIMESTAMPDIFF(MONTH,'2024-07-01', '2026-07-01')),
('S003', 'KKmart', 'Chai Kee Kan', '0163308495', 'kkmart@gmail.com', 'Jalan Teratai 3', 'Johor Jaya', 81100, '2024-01-01', '2026-01-01', TIMESTAMPDIFF(MONTH,'2024-01-01', '2026-01-01')),
('S004', 'Econsave', 'Lai Poh Thian', '0162065069', 'econsave@gmail.com', 'Jalan Ara 7', 'Ulu Tiram', 81800, '2025-01-01', '2027-01-01', TIMESTAMPDIFF(MONTH,'2025-01-01', '2027-01-01')),
('S005', 'JoJoe', 'Wei How', '01154252357', 'jojoe@gmail.com', 'Jalan Kebudayaan 1', 'Skudai', 81310, '2022-01-01', '2025-01-01', TIMESTAMPDIFF(MONTH, '2022-01-01', '2025-01-01')),
('S006', 'Mcdonalds', 'Sheik Fahd', '0123657324', 'mcdonald@gmail.com', 'Jalan Pontian', 'Skudai', 81300, '2025-07-01', '2029-07-01', TIMESTAMPDIFF(MONTH,'2025-07-01', '2029-07-01')),
('S007', 'FireWoods', 'Akmal Anuar', '0179899246', 'firewood@gmail.com', 'Jalan Kiambang 11', 'Kulai', 81000, '2022-01-01', '2026-01-01', TIMESTAMPDIFF(MONTH,'2022-01-01', '2026-01-01')),
('S008', 'AeonBig', 'Tsugutoshi Seko', '075208700', 'aeonbig@gmail.com', 'Jalan Tebrau 5', 'Desa Tebrau', 81100, '2026-01-01', '2030-01-01', TIMESTAMPDIFF(MONTH,'2026-01-01', '2030-01-01'));