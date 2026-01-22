use practise1;
create table employees(
	emp_id int primary key,
    emp_name varchar(50),
    department varchar(30),
    salary int,
    city varchar(50),
    age int);
insert into employees(emp_id , emp_name, department,salary, city , age) values
	(1, 'Rohit' , 'IT' , 45000 , 'Delhi' , 25),
	(2, 'Simran' , 'HR' , 50000 , 'Bhopal' , 21),
    (3, 'Ankit' , 'Finance' , 52000 , 'Indore' , 28),
	(4, 'Ram' , 'IT' , 100000 , 'Delhi' , 30),
    (5, 'Shashwat' , 'CSE' , 110000 , 'Lucknow' , 22);
select * from employees;
select emp_name, department,age from employees;
select * from employees
	where department = 'IT';
select * from employees
     where salary>45000;
select * from employees
    where city = 'Delhi';
select * from employees
	where salary>45000 and salary<55000;
select * from employees
	where age>28 or age = 28;
select * from employees
    where not city = 'Delhi';
select * from employees
     order by salary asc;
select * from employees
	order by salary desc;
select * from employees
    where department = 'IT' AND salary>45000;
select * from employees
     where city = 'Delhi' or city = 'Lucknow';
select * from employees
    where emp_name like 'R%';
select * from employees
    where salary<40000;











