set serveroutput on;
declare 
	b customer.balance%type;

begin
	select balance into b from customer where account_no=1007;
	if b>100000
	then
		dbms_output.put_line('TAX Included');
    else         
        dbms_output.put_line('General Person');
    end if;
end;
/