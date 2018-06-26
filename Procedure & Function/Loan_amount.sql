set serveroutput on;
DECLARE  
	a loan.amount%type;
	b integer;
   	c loan.interest%type;
   	d real;

FUNCTION findLoanAmount(w IN loan.loan_no%type,y IN integer) return real IS z real; 
BEGIN 
   select amount into a from loan where loan_no=w;
   select interest into c from loan where loan_no=w;
   z := a+a*(c/100)*y;
   return z;
END;   
BEGIN
	d := findLoanAmount(3002,3);
   	dbms_output.put_line('Present loan amount: ' || d); 
END;
/

