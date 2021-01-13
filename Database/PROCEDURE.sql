-- Create procedure to get order details using order_id
create procedure getOrderDetails (in or_id int)
  BEGIN
    declare c cursor with return FOR
      select * from order where order_id = or_id;
    open c;
  END@


-- calling the procedure
call getOrderDetails(10);

-- Create procedure to enter customer either for sender or RECEIVER
create procedure enter_customer
  (in cust_type char(1), name varchar(30), phone varchar(15), email varchar(30),
      street varchar(20), city varchar(20), state varchar(20), zip int)
  BEGIN
    if (cust_type = 'S') then
      insert into SENDER(s_name, s_phone, s_email, s_street, s_city, s_state, s_zip)
        values(name, phone, email, street, city, state, zip);
    else
      insert into RECEIVER(r_name, r_phone, r_email, r_street, r_city, r_state, r_zip)
        values(name, phone, email, street, city, state, zip);
    end if;
  END@

-- Call
call enter_customer('S', 'Ali', '0152134500', null, 'Jalan 1', 'Taman Melawati', 'Kuala Lumpur', 53100);
