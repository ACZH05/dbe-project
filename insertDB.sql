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

INSERT INTO DropshipOrder (orderID, orderDate, deliveryDate, orderstatus, subtotal, shippingFee, taxAmount, totalAmount, transactionID, transactionDate, paymentMethod, transactionStatus)
VALUES
('O001', '2025-01-01', '2025-01-05', 'Shipped', 100.00, 10.00, 8.00, 118.00, 'T001', '2025-01-01', 'Credit Card', 'Completed'),
('O002', '2025-01-02', '2025-01-06', 'Processing', 200.00, 15.00, 16.00, 231.00, 'T002', '2025-01-02', 'PayPal', 'Pending'),
('O003', '2025-01-03', '2025-01-07', 'Delivered', 150.00, 12.00, 12.80, 174.80, 'T003', '2025-01-03', 'Credit Card', 'Completed'),
('O004', '2025-01-04', '2025-01-08', 'Cancelled', 0.00, 0.00, 0.00, 0.00, 'T004', '2025-01-04', 'Debit Card', 'Refunded'),
('O005', '2025-01-05', '2025-01-09', 'Pending', 300.00, 20.00, 24.00, 344.00, 'T005', '2025-01-05', 'PayPal', 'Pending'),
('O006', '2025-01-06', '2025-01-10', 'Processing', 250.00, 18.00, 20.40, 288.40, 'T006', '2025-01-06', 'Credit Card', 'Processing'),
('O007', '2025-01-07', '2025-01-11', 'Shipped', 400.00, 25.00, 32.00, 457.00, 'T007', '2025-01-07', 'Debit Card', 'Completed'),
('O008', '2025-01-08', '2025-01-12', 'Delivered', 500.00, 30.00, 40.00, 570.00, 'T008', '2025-01-08', 'PayPal', 'Completed'),
('O009', '2025-01-09', '2025-01-13', 'Cancelled', 0.00, 0.00, 0.00, 0.00, 'T009', '2025-01-09', 'Credit Card', 'Refunded'),
('O010', '2025-01-10', '2025-01-14', 'Shipped', 350.00, 22.00, 28.00, 400.00, 'T010', '2025-01-10', 'Debit Card', 'Completed');


INSERT INTO product
VALUES
('P001', 'Chocolate Cake', 15.99, '10 pieces', 'S001'),
('P002', 'Vanilla Ice Cream', 7.49, '5 liters', 'S002'),
('P003', 'Strawberry Tart', 8.99, '8 pieces', 'S003'),
('P004', 'Apple Pie', 12.99, '6 pieces', 'S004'),
('P005', 'Cheesecake', 14.99, '4 pieces', 'S005'),
('P006', 'Brownies', 9.99, '12 pieces', 'S006'),
('P007', 'Macarons', 18.99, '20 pieces', 'S007'),
('P008', 'Cupcakes', 11.99, '12 pieces', 'S008');



INSERT INTO Promotion (productID, discount, discountedPrice) 
VALUES
('P001', 0.10, 15.99 * (1 - 0.10)), -- Chocolate Cake, 10% discount
('P002', 0.15, 7.49 * (1 - 0.15)),  -- Vanilla Ice Cream, 15% discount
('P003', 0.20, 8.99 * (1 - 0.20)),  -- Strawberry Tart, 20% discount
('P004', 0.05, 12.99 * (1 - 0.05)), -- Apple Pie, 5% discount
('P005', 0.25, 14.99 * (1 - 0.25)), -- Cheesecake, 25% discount
('P006', 0.10, 9.99 * (1 - 0.10)),  -- Brownies, 10% discount
('P008', 0.15, 11.99 * (1 - 0.15)); -- Cupcakes, 15% discount

INSERT INTO Nonpromotion (productID) 
VALUES
('P007');



