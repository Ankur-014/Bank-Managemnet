drop table loan;
drop table account;
drop table employee;
drop table customer;
drop table branch;

create table branch(
	branch_name varchar(20),
	city varchar(20),
	primary key(branch_name)
);

create table customer(
	account_no integer ,
	name varchar(20) not null,
	date_of_birth date,
	gender varchar(2),
	branch_name varchar(20),
	phone_no number(11) unique,	
	foreign key (branch_name) references branch(branch_name),
	primary key (account_no));

create table account(
	account_no integer,
	balance integer default 500,
	account_type varchar(10),
	foreign key (account_no) references customer(account_no),
	primary key (account_no));

create table employee(
	employee_ID integer ,
	name varchar(20) not null,
	branch_name varchar(20),
	salary number(7) check(salary>=30000 and salary <=100000),  
	phone_no number(11) unique,	
	gender varchar(2),
	foreign key	(branch_name) references branch(branch_name),
	primary key (employee_ID));

create table loan(
	account_no integer,
	loan_type varchar(10) not null,
	interest integer,
	entry_clerk_id integer,
	access_date date,
	foreign key (account_no) references customer(account_no),
	foreign key (entry_clerk_id) references employee(employee_ID),
	primary key (account_no));

describe branch;
describe customer;
describe account;
describe employee;
describe loan;

select * from tab;

insert into branch(branch_name,city) values ('KUET','Khulna');
insert into branch(branch_name,city) values ('Fulbari','Dinajpur');
insert into branch(branch_name,city) values ('Dhanmondi-15','Dhaka');	
insert into branch(branch_name,city) values ('FulbariGate','Khulna');

insert into customer(account_no,name,date_of_birth,gender,branch_name,phone_no) values (1,'Ankur','21-Apr-98','M','KUET',01782123643);	
insert into customer(account_no,name,date_of_birth,gender,branch_name,phone_no) values (2,'Sakil','26-Oct-97','M','KUET',01855096779);	
insert into customer(account_no,name,date_of_birth,gender,branch_name,phone_no) values (3,'Sami','20-May-97','M','KUET',01521428673);	
insert into customer(account_no,name,date_of_birth,gender,branch_name,phone_no) values (4,'Ripon','04-Nov-85','M','Dhanmondi-15',01714837638);	
insert into customer(account_no,name,date_of_birth,gender,branch_name,phone_no) values (5,'Snighdha','03-Jun-89','F','Dhanmondi-15',01563093456);	


insert into account(account_no,balance,account_type) values(1,2000,'Personal');
insert into account(account_no,account_type)  values(2,'Personal');
insert into account(account_no,balance,account_type)  values(4,45000,'Nominal');

insert into employee(employee_ID,name,branch_name,salary,phone_no,gender) values(1,'Fazal','Fulbari',40000,01521302942,'M');
insert into employee(employee_ID,name,branch_name,salary,phone_no,gender) values(2,'Nahin','KUET',45000,01521484478,'M');
insert into employee(employee_ID,name,branch_name,salary,phone_no,gender) values(3,'Sadman','KUET',35000,01521418737,'M');
insert into employee(employee_ID,name,branch_name,salary,phone_no,gender) values(4,'Prova','Dhanmondi-15',55000,01731418737,'F');

insert into loan(account_no,loan_type,interest,entry_clerk_id,access_date) values(1,'Student',2,2,'2-Apr-17');
insert into loan(account_no,loan_type,interest,entry_clerk_id,access_date) values(2,'Student',4,1,'3-Jan-18');
insert into loan(account_no,loan_type,interest,entry_clerk_id,access_date) values(4,'Mortage',5,4,'14-Feb-05');

select * from branch;
select * from customer;
select * from account;
select * from employee;
select * from loan;

select count(*) from account;
select count(gender) from customer;
select count(distinct gender) from customer;

select gender,avg(salary) from employee group by gender;
select gender,avg(salary) from employee group by gender having avg(salary)>30000;

select max(balance) from account;
select min(balance) from account;

select branch_name,avg(salary) from employee group by branch_name;
select * from employee where salary>40000;
select employee_ID,avg(salary) from employee group by employee_ID having avg(salary)>35000;

select gender,avg(salary),count(branch_name) from employee group by gender having avg(salary)>35000;
select (sum(salary)/count(salary)) from employee;

select s.name,t.name,t.salary from customer s, employee t;
select s.name,t.name,t.salary from customer s, employee t where s.account_no = t.employee_ID;

drop view customer_view;

create view customer_view as 
	select name,floor(months_between(sysdate,date_of_birth)/12)
		as age from customer;

select * from customer_view;

commit;