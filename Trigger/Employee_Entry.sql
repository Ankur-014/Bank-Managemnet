set serveroutput on;
create or replace trigger emp_name
after insert on employee for each row    
begin 
	dbms_output.put_line('You just entried an employee Mr. '||:new.name);	
end;
/
