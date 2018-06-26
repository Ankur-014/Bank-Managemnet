set serveroutput on;
create or replace trigger cust_name
after insert on customer for each row    
begin 
	dbms_output.put_line('You just entried a customer Mr. '||:new.name);	
end;
/
