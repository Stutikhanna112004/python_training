create database practise2;
use practise2;
create table citywise(
   order_id int primary key,
   customer varchar(30),
   amount int,
   city varchar(30));
insert into citywise(order_id , customer, amount, city) values
    (1, 'C101' , 500 , 'Delhi'),
    (2, 'C102' , 700 , 'Mumbai'),
    (3, 'C101' , 300 , 'Delhi'),
    (4, 'C103' , NULL , 'Kolkata'),
    (5, 'C14' , 900 , 'Mumbai');
select * from citywise;
select order_id,customer,amount from citywise;
select * from citywise
where city = 'Delhi';
select * from citywise
where amount > 500;
select * from citywise
where amount is NULL;
select city from citywise
  group by city;
select * from citywise
   order by amount desc;
select * from citywise
    where city = 'Mumbai' and amount > 600;
select * from citywise
   where not city = 'Kolkata';
select SUM(amount) as sum_amt from citywise;
select avg(amount) as avg_amt from citywise;
select customer, sum(amount) as sum_amt  from citywise
group by customer;
select city , count(order_id) as tot_order from citywise
group by city;


