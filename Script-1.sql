select first_name, last_name
from customer
inner join address 
on customer.address_id = address.address_id
and district = 'Texas';
select amount, first_name, last_name
from customer
inner join payment 
on customer.customer_id = payment.customer_id 
and amount > 6.99; 
select first_name, last_name from customer where customer_id in 
(select customer_id from payment where amount > 6.99);
select first_name, last_name from customer where address_id in 
(select address_id from address where city_id =  81);
select count(distinct payment_id) from payment 
where staff_id = '2';
select count(rating) from film where rating = 'NC-17';
select count(rating) from film where rating = 'G';
select count(rating) from film where rating = 'PG';
select count(rating) from film where rating = 'PG-13';
select count(rating) from film where rating = 'R';

select customer_id from payment where amount > 6.99;
select first_name, last_name from customer where customer_id in 
(select customer_id from payment where customer_id = '567' or customer_id = '342' or customer_id = '467' or customer_id = '343');

select * from customer where customer_id in 
(select customer_id from payment where amount = 0);

