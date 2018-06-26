set serveroutput on;
DECLARE  
	b customer.balance%type;
	c real;
	d real;
   
PROCEDURE Transac(w in customer.account_no%type,x in varchar,y in customer.balance%type ,z out real) is 
BEGIN
    select balance into b from customer where account_no=w;
    if x='U'
    then
    	c := b+y;
    	update customer set balance = c where account_no=w;
    elsif x='D'
    then
    	c := b-y;
    	update customer set balance = c where account_no=w;
    end if;

    select balance into z from customer where account_no=w;
END;

BEGIN
	Transac(1002,'U',2000,d);
    dbms_output.put_line('Updated balance: ' || d); 
END;
/

