set serveroutput on;
declare 
	b customer.balance%type;
	c customer.account_no%type;
	a customer.name%type;
	i number(1);

begin
	c :=1004;

	for i IN 1..5 loop
		select balance into b from customer where account_no=c;
		select name into a from customer where account_no=c;

		if b>=50000
		then
			dbms_output.put_line('Loan Granted Mr. '||a);
   	 	else         
        	dbms_output.put_line('Sorry Mr. '||a||' Insufficient balance to get Loan');
    	end if;

    	c := c+1;

    end loop;
end;
/