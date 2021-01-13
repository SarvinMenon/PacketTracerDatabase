
-- MAX AND NESTED QUERIES
select order_id, total_price
from order
where total_price = (select max(total_price) from order);

-- SUM
select count(o.order_id) as NUM_ORDER, sum(total_price) as TOTAL
from order as o, sender as s
where s.s_id = o.s_id and (s.s_city = 'Cheras');

-- GROUP BY AND HAVING BY
select p.pay_type, o.payment_id, count(order_id) as total
from order as o, payment as p
where o.payment_id = p.payment_id
group by p.pay_type, o.payment_id
having o.payment_id = 2;

-- VIEW
create view undelivered_order as
  select ORDER_ID, order_date, track_num
  from order
  where delivery_status = 'Undelivered';

-- TOP 5
select order_id, total_price
from order
order by total_price desc
FETCH FIRST 5 ROWS ONLY;
