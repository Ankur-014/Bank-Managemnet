set serveroutput on;
create or replace trigger branchentry_name
after insert on branch for each row    
begin 
	dbms_output.put_line('You just entried a branch '||:new.branch_name);	
end;
/
