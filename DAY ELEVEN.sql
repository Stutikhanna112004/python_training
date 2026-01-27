use practise2;
create table customers1(
  customer_id varchar(30) primary key,
  customer_name varchar(30),
  city varchar(30));
create table orders(
  order_id int primary key ,
  customer_id varchar(30) ,
  amount int);
insert into customers1(customer_id, customer_name,city) values
('C101' , 'RAHUL' , 'DELHI'),
('C102' , 'AMAN' , 'MUMBAI'),
('C105' , 'NEHA' , 'DELHI'),
('C104' , 'PRIYA' , 'KOLKATA');
insert into orders(order_id,customer_id,amount) values
(1,'C101', 500),
(2,'C102', 700),
(3,'C101', 300),
(4,'C104', 600),
(5,'C105', 400);
select orders.order_id, customers1.customer_name, orders.amount from orders
inner join customers1
on orders.customer_id = customers1.customer_id;

select orders.order_id, customers1.customer_name, orders.amount from orders
inner join customers1
on orders.customer_id = customers1.customer_id
where customers1.city = 'Mumbai';

select orders.order_id , customers1.customer_name from orders
inner join customers1
on orders.customer_id = customers1.customer_id;

select customers1.customer_name, orders.order_id, orders.amount from customers1
inner join orders
on customers1.customer_id = orders.customer_id;

select distinct customers1.customer_id, customers1.customer_name from customers1
inner join orders
on customers1.customer_id = orders.customer_id;

select customers1.customer_name , sum(orders.amount) as total_spent from customers1
inner join orders
on customers1.customer_id = orders.customer_id
group by customers1.customer_name;

select customers1.customer_id, customers1.customer_name, customers1.city , orders.order_id,  orders.amount from customers1
inner join orders
on customers1.customer_id = orders.customer_id;

select customers1.customer_id, customers1.customer_name, customers1.city , orders.order_id,  orders.amount from customers1
left join orders
on customers1.customer_id = orders.customer_id;

select customers1.customer_id, customers1.customer_name, customers1.city , orders.order_id,  orders.amount from customers1
left join orders
on customers1.customer_id = orders.customer_id
where order_id Is null;









