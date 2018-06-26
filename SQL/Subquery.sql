select name,branch_name from customer 
	where account_no in (
		select account_no from loan);
