select name,account_no from customer 
	where balance in(65000,45000);
select name,account_no from customer 
	where balance not in(65000,45000);

select name,salary from employee order by salary;
select name,balance from customer order by balance desc;

select name,salary from employee where salary between 30000 and 60000;

select name,balance,account_type from customer where balance>=100000 or account_type='Saving'; 

select name,balance from customer where name like 'Sa%';
select name,salary from employee where name like '%on';
select name,branch_name from customer where name like '%i%';

select distinct status from employee;
