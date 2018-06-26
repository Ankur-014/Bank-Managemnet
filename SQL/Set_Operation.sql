select sum(balance) from customer 
	where branch_name='KUET' 
	union 
	select sum(balance) from customer 
		where branch_name='Dhanmondi-15';

select name,branch_name from customer 
	where account_type='Saving' 
	intersect 
	select name,branch_name from customer 
		where account_type='Current';

select name,branch_name from customer 
	where account_type='Saving' 
	minus 
	select name,branch_name from customer 
		where account_type='Current';