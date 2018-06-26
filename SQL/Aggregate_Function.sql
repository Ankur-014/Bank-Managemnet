select count(*) from customer;
select count(entry_clerk_id) from loan;
select count(distinct entry_clerk_id) from loan;

select gender,avg(salary) from employee group by gender;
select entry_clerk_id,avg(amount) from loan
	group by entry_clerk_id having avg(amount)>30000;
	   	

select max(balance) from customer;
select min(balance) from customer;

select branch_name,avg(salary) from employee group by branch_name; 
select * from employee where salary>40000;
select employee_ID,avg(salary) from employee 
	group by employee_ID having avg(salary)>35000;

select gender,avg(salary),count(branch_name) from employee
	group by gender having avg(salary)>35000; 
	
select (sum(salary)/count(salary)) as average_salary from employee;

select sum(balance) from customer where branch_name='KUET';
	