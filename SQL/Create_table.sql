drop table loan;
drop table employee;
drop table customer;
drop table branch;

create table branch(
	branch_name varchar(20),
	city varchar(20),
	assets real default 100000.00,
	primary key(branch_name));

create table customer(
	account_no integer ,
	name varchar(20) not null,
	date_of_birth date,
	gender varchar(2),
	branch_name varchar(20),
	phone_no number(11) unique,	
	balance real default 500.00,
	account_type varchar(10),	
	foreign key (branch_name) references branch(branch_name),
	primary key (account_no));

create table employee(
	employee_ID integer,
	name varchar(20) not null,
	status varchar(20),
	branch_name varchar(20),
	salary number(7) check(salary>=30000 and salary <=100000),  
	phone_no number(11) unique,	
	gender varchar(2),
	foreign key	(branch_name) references branch(branch_name),
	primary key (employee_ID));

create table loan(
	loan_no integer,
	account_no integer,
	loan_type varchar(10) not null,
	interest integer,
	entry_clerk_id integer,
	access_date date,
	amount real default 10000,
	foreign key (account_no) references customer(account_no),
	foreign key (entry_clerk_id) references employee(employee_ID),
	primary key (loan_no));

describe branch;
describe customer;
describe employee;
describe loan;

select * from tab;