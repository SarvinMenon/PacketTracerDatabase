-- SENDER

drop table sender;

create table sender(
  s_id int PRIMARY KEY NOT NULL GENERATED ALWAYS AS IDENTITY(Start with 100 increment by 1),
  s_name varchar(30) NOT NULL,
  s_phone varchar(15) UNIQUE NOT NULL,
  s_email varchar(30),
  s_street varchar(20) NOT NULL,
  s_city varchar(20) NOT NULL,
  s_state varchar(20) NOT NULL,
  s_zip int NOT NULL
);

insert into sender(s_name, s_phone, s_email, s_street, s_city, s_state, s_zip) values
('Joshua Miguel', '0162134501', 'josh@gmail.com', 'Walnut Street', 'Taman Melawati', 'Kuala Lumpur', 50100),
('Aziz Azizan', '0162134502', 'azizsatar@gmail.com', 'Honeymoon Street', 'Cyberjaya', 'Selangor', 60100),
('Bella', '0188020500', null, 'Jalan Duta', 'Taman Damansara', 'Kuala Lumpur', 52100),
('Michael Adams', '014778539',null,'Jalan F7', 'Taman Malawati','Kuala Lumpur', 53100),
('Shahrir Osman', '0132238502', 'shaahrir@gmail.com','Lorong Siput', 'Taman Sentosa','Selangor', 54200),
('Kate Middleton', '0142237899', 'kate@gmail.com','Lorong Kerbau', 'Bangi','Selangor', 54200),
('Ahmad Adam', '0162193509', 'adam@gmail.com','Jalan B4', 'Taman Melawati','Perak', 43100),
('Syazwani', '0132122522', null ,'Jalan Tiga', 'Cheras','Selangor', 54200),
('Nadia Othman', '0163334101', 'nadiaa@mmu.com','Jalan C2', 'Taman Malawati','Kuala Lumpur', 53100),
('Nurul Anis', '0124935101', 'manis@mmu.com','Jalan Empat', 'Cheras','Selangor', 54200),
('Sarvin Menon', '0114181191', null,'Simpang Tiga', 'Ampang','Selangor', 54200),
('Amirah', '0122578890', 'amiraho@hotmail.com','Tembok Besar', 'Cheras','Selangor', 54200);


--- RECEIVER

drop table RECEIVER;

create table RECEIVER(
  r_id int PRIMARY KEY NOT NULL GENERATED ALWAYS AS IDENTITY(Start with 100 increment by 1),
  r_name varchar(30) NOT NULL,
  r_phone varchar(15) UNIQUE NOT NULL,
  r_email varchar(30),
  r_street varchar(20) NOT NULL,
  r_city varchar(20) NOT NULL,
  r_state varchar(20) NOT NULL,
  r_zip int NOT NULL
);

insert into RECEIVER(r_name, r_phone, r_email, r_street, r_city, r_state, r_zip) values
('Hafiz Ghani', '0162134503', 'josh@gmail.com', 'Leaf Street', 'Rapid City', 'Illinois', 74510),
('Raden Ameer', '0162134504', 'rayden@gmail.com', 'Peach Street', 'Phoenix', 'Arizona', 24100),
('Siti Amirah','0122431504', 'sitiamirah@hotmail.com',	'Mango Street', 'Phoenix','Arizona', 24100),
('Taylor Baker','0122234514', null,'Conver Street', 'Montreal','Sydney', 31240),
('Nurdiayana','0124254111', 'diyaana@gmail.com','Jalan Bahagia', 'Cheras','Selangor', 54200),
('Syuhaida','0132131514', null,'Jalan D9', 'Taman Malawati','Kuala Lumpur', 53100),
('Norman','0112221394', 'norman@gmail.com','Jalan Ayam', 'Cheras','Selangor', 54200),
('Chong Yi Xian','0133121111', 'cyx99@one.com','Jalan Ikan', 'Cheras','Selangor', 54200),
('Kamarila','0134991514', 'Kamarila@gmail.com','Jalan B5', 'Taman Melawati','Perak', 43100),
('Alia Tan','0122331917','alia.tan@gmail.com','Jalan E9', 'Taman Malawait','Kuala Lumpur', 53100);
