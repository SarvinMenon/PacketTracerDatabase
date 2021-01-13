-- Create SENDER table
create table SENDER(
  s_id int PRIMARY KEY NOT NULL,
  s_name varchar(30) NOT NULL,
  s_phone varchar(15) UNIQUE NOT NULL,
  s_email varchar(30),
  s_street varchar(20) NOT NULL,
  s_city varchar(20) NOT NULL,
  s_state varchar(20) NOT NULL,
  s_zip int NOT NULL
);

-- Create RECEIVER table
create table RECEIVER(
  r_id int PRIMARY KEY NOT NULL,
  r_name varchar(30) NOT NULL,
  r_phone varchar(15) UNIQUE NOT NULL,
  r_email varchar(30),
  r_street varchar(20) NOT NULL,
  r_city varchar(20) NOT NULL,
  r_state varchar(20) NOT NULL,
  r_zip int NOT NULL
);

-- Create POSTPERSON table
create table POSTPERSON(
  post_id int PRIMARY KEY NOT NULL,
  p_name varchar(30) NOT NULL,
  p_phone varchar(15) NOT NULL
);

-- Create PAYMENT table
create table PAYMENT(
  payment_id int PRIMARY KEY NOT NULL,
  pay_type varchar(11) NOT NULL
);

-- Create PACKAGE table
create table PACKAGE(
  pack_id int PRIMARY KEY NOT NULL,
  pack_type varchar(15) NOT NULL,
  pack_price decimal(10,2) NOT NULL
);

-- Create ORDER table
create table ORDER(
  order_id int PRIMARY KEY NOT NULL,
  s_id int,
  r_id int,
  order_date date NOT NULL,
  total_price decimal(10,2),
  track_num varchar(4) UNIQUE NOT NULL,
  payment_id int CHECK(payment_id in (1,2,3)),
  post_id int,
  delivery_status varchar(11) CHECK(delivery_status in ('Delivered','Undelivered')),
  FOREIGN KEY (s_id) REFERENCES SENDER,
  FOREIGN KEY (r_id) REFERENCES RECEIVER,
  FOREIGN KEY (payment_id) REFERENCES PAYMENT,
  FOREIGN KEY (post_id) REFERENCES POSTPERSON
);

-- Create ORDER_DETAILS table
create table ORDER_DETAILS(
  od_id int PRIMARY KEY NOT NULL,
  order_id int,
  pack_id int,
  FOREIGN KEY (order_id) REFERENCES ORDER,
  FOREIGN KEY (pack_id) REFERENCES PACKAGE
);
