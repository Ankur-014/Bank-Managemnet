set serveroutput on;
DECLARE  
	a loan.amount%type;
   

FUNCTION findTotalLoan(w IN loan.account_no%type) return integer IS z integer;
BEGIN
   select sum(amount) into z from loan where account_no=w;
   return z;
END; 

BEGIN
	a := findTotalLoan(1007);
   dbms_output.put_line('Present loan amount: ' || a); 
END;
/

