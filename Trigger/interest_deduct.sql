set serveroutput on;
create or replace trigger interest_deduct
before insert or update on customer for each row

declare
	c_acc	customer.account_no%type;
	c_bal 	customer.balance%type;
	c_int   real;

begin
	c_acc := :new.account_no;
	c_bal := :new.balance;
	if c_bal >= 100000
	then	
		c_int := (c_bal/100)*2;
		c_bal := c_bal - c_int;
		update customer set balance = c_bal where account_no = c_acc;
		select balance into c_bal from customer where account_no = c_acc;
		dbms_output.put_line('Interest deducted about tk '|| c_int);
		dbms_output.put_line('Present balance '|| c_bal);
	end if;

end;
/
