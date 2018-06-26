insert into branch(branch_name,city) values 
	('KUET','Khulna');
insert into branch(branch_name,city) values 
	('Fulbari','Dinajpur');
insert into branch(branch_name,city) values 
	('Dhanmondi-15','Dhaka');	
insert into branch(branch_name,city) values 
	('FulbariGate','Khulna');
insert into branch(branch_name,city) values 
	('Motihar','Rajshahi');
insert into branch(branch_name,city) values 
	('Rajapur','Natore');
insert into branch(branch_name,city) values 
	('Veramara','Kustia');
insert into branch(branch_name,city) values 
	('Raojan','Chattogram');
insert into branch(branch_name,city) values 
	('Kuakata','Patuakhali');
insert into branch(branch_name,city) values 
	('Lalkhal','Sylhet');




insert into customer(account_no,name,date_of_birth,gender,branch_name,phone_no,balance,account_type) values 
	(1001,'Ankur','21-Apr-98','M','KUET',1782123643,2000,'Saving');	
insert into customer(account_no,name,date_of_birth,gender,branch_name,phone_no,account_type) values 
	(1002,'Sakil','26-Oct-97','M','KUET',1855096779,'Saving');	
insert into customer(account_no,name,date_of_birth,gender,branch_name,phone_no,balance,account_type) values 
	(1003,'Sami','20-May-97','M','KUET',1521428673,25000,'Current');	
insert into customer(account_no,name,date_of_birth,gender,branch_name,phone_no,balance,account_type) values 
	(1004,'Ripon','04-Nov-85','M','Dhanmondi-15',1714837638,45000,'Saving');	
insert into customer(account_no,name,date_of_birth,gender,branch_name,phone_no,balance,account_type) values 
	(1005,'Snighdha','03-Jun-89','F','Dhanmondi-15',1563093456,45000,'Current');
insert into customer(account_no,name,date_of_birth,gender,branch_name,phone_no,balance,account_type) values 
	(1006,'Asif','07-Nov-97','M','FulbariGate',1516111574,65000,'Current');
insert into customer(account_no,name,date_of_birth,gender,branch_name,phone_no,balance,account_type) values 
	(1007,'Sami','22-May-94','M','KUET',1721428643,75000.50,'Saving');
insert into customer(account_no,name,date_of_birth,gender,branch_name,phone_no,balance,account_type) values 
	(1008,'SaZid','13-Jun-97','M','Motihar',1784323478,200000,'Current');	
insert into customer(account_no,name,date_of_birth,gender,branch_name,phone_no,balance,account_type) values 
	(1009,'Tanvir','08-Mar-97','M','Veramara',1785423778,20000,'Current');	
insert into customer(account_no,name,date_of_birth,gender,branch_name,phone_no,balance,account_type) values 
	(1010,'Turna','12-Aug-98','M','Raojan',1524323478,200000,'Saving');



insert into employee(employee_ID,name,status,branch_name,salary,phone_no,gender) values 
	(2001,'Fazal','Manager','Fulbari',40000,01521302942,'M');
insert into employee(employee_ID,name,status,branch_name,salary,phone_no,gender) values 
	(2002,'Nahin','Clerk','KUET',45000,01521484478,'M');
insert into employee(employee_ID,name,status,branch_name,salary,phone_no,gender) values 
	(2003,'Sadman','Clerk','KUET',35000,01521418737,'M');
insert into employee(employee_ID,name,status,branch_name,salary,phone_no,gender) values 
	(2004,'Prova','Manager','Dhanmondi-15',55000,01731418737,'F');
insert into employee(employee_ID,name,status,branch_name,salary,phone_no,gender) values 
	(2005,'Joyanta','Clerk','Raojan',58000,01546302942,'M');
insert into employee(employee_ID,name,status,branch_name,salary,phone_no,gender) values 
	(2006,'Ruli','Manager','Rajapur',75000,01721484478,'F');
insert into employee(employee_ID,name,status,branch_name,salary,phone_no,gender) values 
	(2007,'Jibon','Clerk','Rajapur',60000,01621542942,'F');
insert into employee(employee_ID,name,status,branch_name,salary,phone_no,gender) values 
	(2008,'Shawon','Manager','Lalkhal',67000,01521945723,'M');
insert into employee(employee_ID,name,status,branch_name,salary,phone_no,gender) values 
	(2009,'Mueez','Clerk','Kuakata',63000,01783346742,'M');
insert into employee(employee_ID,name,status,branch_name,salary,phone_no,gender) values 
	(2010,'Azahar','Manager','KUET',43000,01831484478,'M');




insert into loan(loan_no,account_no,loan_type,interest,entry_clerk_id,access_date,amount) values 
	(3001,1001,'Student',2,2002,'2-Apr-17',20000);
insert into loan(loan_no,account_no,loan_type,interest,entry_clerk_id,access_date,amount) values 
	(3002,1002,'Student',4,2001,'3-Jan-18',45000);
insert into loan(loan_no,account_no,loan_type,interest,entry_clerk_id,access_date) values 
	(3003,1004,'Mortage',5,2004,'14-Feb-05');
insert into loan(loan_no,account_no,loan_type,interest,entry_clerk_id,access_date,amount) values 
	(3004,1001,'Mortage',1,2010,'2-Apr-18',200000);
insert into loan(loan_no,account_no,loan_type,interest,entry_clerk_id,access_date,amount) values 
	(3005,1007,'Student',9,2005,'21-Sep-17',35000);
insert into loan(loan_no,account_no,loan_type,interest,entry_clerk_id,access_date,amount) values 
	(3006,1008,'Student',5,2010,'31-Dec-17',100000);
insert into loan(loan_no,account_no,loan_type,interest,entry_clerk_id,access_date,amount) values 
	(3007,1007,'Mortage',12,2002,'23-Oct-17',40000);
insert into loan(loan_no,account_no,loan_type,interest,entry_clerk_id,access_date,amount) values 
	(3008,1005,'Mortage',10,2007,'23-Nov-17',47000);
insert into loan(loan_no,account_no,loan_type,interest,entry_clerk_id,access_date,amount) values 
	(3009,1007,'Student',12,2007,'23-Oct-17',100000);
insert into loan(loan_no,account_no,loan_type,interest,entry_clerk_id,access_date,amount) values 
	(3010,1010,'Mortage',7,2003,'4-Mar-18',400000);

select * from branch;
select * from customer;
select * from employee;
select * from loan;       
