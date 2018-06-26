
set serveroutput on;
DECLARE  
	a loan.amount%type;
	d real;
	c integer;
   

PROCEDURE findInterest(x IN LOAN.LOAN_NO%type,y IN integer ,z OUT real) IS 
BEGIN 
   select amount into a from loan where loan_no=x;
   select interest into c from loan where loan_no=x;
   z := a*(c/100)*y;
END;

BEGIN
	findInterest(3002,3,d);
    dbms_output.put_line('Interest: ' || d); 
END;
/

