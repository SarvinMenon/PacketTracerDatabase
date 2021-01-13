
-- INSERT INTO SENDER TABLE

insert into SENDER values
(1, 'Joshua Miguel', '0162134501', 'josh@gmail.com', 'Walnut Street', 'Ames', 'Iowa', 50100),
(2, 'Aziz Azizan', '0162134502', 'azizsatar@gmail.com', 'Honeymoon Street', 'Des Moines', 'Iowa', 60100),
(3, 'Bella', '0188020500', null, 'Jalan Duta', 'Taman Damansara', 'Kuala Lumpur', 52100),
(5, 'Michael Adams', '014778539',null,'Jalan F7', 'Taman Malawati','Kuala Lumpur', 53100),
(6, 'Shahrir Osman', '0132238502', 'shaahrir@gmail.com','Lorong Siput', 'Taman Sentosa','Selangor', 54200),
(7, 'Kate Middleton', '0142237899', 'kate@gmail.com','Lorong Kerbau', 'Bangi','Selangor', 54200),
(8, 'Ahmad Adam', '0162193509', 'adam@gmail.com','Jalan B4', 'Taman Melawati','Perak', 43100),
(9, 'Syazwani', '0132122522', null ,'Jalan Tiga', 'Cheras','Selangor', 54200),
(10, 'Nadia Othman', '0163334101', 'nadiaa@mmu.com','Jalan C2', 'Taman Malawati','Kuala Lumpur', 53100),
(11, 'Nurul Anis', '0124935101', 'manis@mmu.com','Jalan Empat', 'Cheras','Selangor', 54200),
(12, 'Sarvin Menon', '0114181191', null,'Simpang Tiga', 'Ampang','Selangor', 54200),
(13, 'Amirah', '0122578890', 'amiraho@hotmail.com','Tembok Besar', 'Cheras','Selangor', 54200);

-- INSERT INTO RECEIVER TABLE

insert into RECEIVER values
(1, 'Hafiz Ghani', '0162134503', 'josh@gmail.com', 'Leaf Street', 'Rapid City', 'Illinois', 74510),
(2, 'Raden Ameer', '0162134504', 'rayden@gmail.com', 'Peach Street', 'Phoenix', 'Arizona', 24100),
(3, 'Siti Amirah','0122431504', 'sitiamirah@hotmail.com',	'Mango Street', 'Phoenix','Arizona', 24100),
(4, 'Taylor Baker','0122234514', null,'Conver Street', 'Montreal','Sydney', 31240),
(5, 'Nurdiayana','0124254111', 'diyaana@gmail.com','Jalan Bahagia', 'Cheras','Selangor', 54200),
(6, 'Syuhaida','0132131514', null,'Jalan D9', 'Taman Malawati','Kuala Lumpur', 53100),
(7, 'Norman','0112221394', 'norman@gmail.com','Jalan Ayam', 'Cheras','Selangor', 54200),
(8, 'Chong Yi Xian','0133121111', 'cyx99@one.com','Jalan Ikan', 'Cheras','Selangor', 54200),
(9, 'Kamarila','0134991514', 'Kamarila@gmail.com','Jalan B5', 'Taman Melawati','Perak', 43100),
(10, 'Alia Tan','0122331917','alia.tan@gmail.com','Jalan E9', 'Taman Malawait','Kuala Lumpur', 53100);

-- INSERT INTO POSTPERSON TABLE

insert into POSTPERSON values
(1, 'Hariz Rizal', '0199121511'),
(2, 'John Doe', '0199121512'),
(3, 'Rosdan', '0132475111'),
(4, 'Bruce Wayne', '0137896504'),
(5, 'Frank Ocean', '0123346659'),
(6, 'Sosua', '0177795110');

-- INSERT INTO PAYMENT TABLE

insert into PAYMENT values
(1, 'Cash'),
(2, 'Credit Card'),
(3, 'Online');

-- INSERT INTO PACKAGE TABLE

insert into PACKAGE values
(1, 'Small Box', 10.00),
(2, 'Medium Box', 15.00),
(3, 'Large Box', 20.00);

-- INSERT INTO ORDER TABLE

insert into ORDER values
(1, 2, 1, '2018-09-18', 25.00, '4760', 1, 2, 'Delivered'),
(2, 1, 2, '2018-10-18', 15.00, '5329', 2, 1, 'Undelivered'),
(3, 12, 8, '2018-01-03', 30.00, '4541', 2, 3, 'Undelivered'),
(4, 5, 3, '2018-03-18', 35.00, '2121', 1 , 6, 'Delivered'),
(5, 11, 4, '2018-04-20', 40.00, '2221', 2 , 5, 'Delivered'),
(6, 3, 5, '2018-09-17', 55.00, '4151', 3 , 2,  'Undelivered'),
(7, 10, 7, '2018-03-10', 25.00, '1731', 3 , 4, 'Delivered'),
(8, 1, 10, '2018-11-01', 11.00, '7113', 1 , 3, 'Undelivered'),
(9, 7, 6, '2018-02-10', 70.00, '9417', 3 , 5, 'Undelivered'),
(10, 6, 9, '2018-09-28', 12.50, '2231', 2 , 2, 'Delivered'),
(11, 13, 7, '2018-02-27', 45.00, '4430', 1 , 1, 'Undelivered'),
(12, 8, 8, '2018-08-08', 80.00, '8180', 2 , 6, 'Delivered'),
(13, 9, 1, '2018-03-15', 33.30, '1800', 3 , 2, 'Delivered'),
(14, 13, 6, '2018-07-17', 13.30, '1819', 2 , 4, 'Undelivered');

-- INSERT INTO ORDER_DETAILS TABLE

insert into ORDER_DETAILS values
-- OD_ID | ORDER_ID | PACK_ID
(1, 1, 2),
(2, 11, 1),
(3, 2, 2),
(4, 13, 3),
(5, 3, 1),
(6, 4, 3),
(7, 12, 2),
(8, 5, 1),
(9, 10, 1),
(10, 9, 2),
(11, 3, 2),
(12, 8, 3),
(13, 9, 2),
(14, 7, 3),
(15, 6, 1),
(16, 7, 3),
(17, 14, 1);
