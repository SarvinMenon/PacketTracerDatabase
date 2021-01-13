-- Alter the table to add discount column
alter table order add discount decimal(6,3);

-- Create the trigger for discount based on payment type
create trigger discount_pay
after insert on order
for each row mode db2sql
  update order
  set discount = 0.10
  where payment_id = 3;

-- Clear the data inside the table
delete from order;


-- Insert again all the data to test trigger
insert into ORDER(order_id, s_id, r_id, order_date, total_price, track_num, payment_id, post_id, delivery_status) values
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

-- Select order table to view result
select * from order;
