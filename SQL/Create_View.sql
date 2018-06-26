drop view customer_view;

create view customer_view as 
	select name,floor(months_between(sysdate,date_of_birth)/12)
		as age,gender,phone_no,branch_name from customer;

select * from customer_view;

drop view branch_view;

create view branch_view as
	select * from customer where branch_name in(
		select branch_name from branch where branch_name='KUET');

select * from branch_view;