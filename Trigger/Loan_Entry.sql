set serveroutput on;
create or replace trigger loanee
after insert on loan for each row    

declare 

c_name customer.name%type;
c_acc  customer.account_no%type;

begin 
	
	c_acc := :new.account_no;
	select name into c_name from customer where account_no=c_acc;
	dbms_output.put_line('You just entried a loan for  Mr. '||c_name);	
	
end;
/
