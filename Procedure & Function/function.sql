set serveroutput on;
DECLARE  
   b integer; 
   c integer;
   d real;
   tax varchar(20);
FUNCTION findLoanAmount(w IN customer.account_no%type,x IN LOAN.LOAN_NO%type, y IN integer) return real IS z real; 
BEGIN 
   select amount into b from loan where account_no=w;
   select interest into c from loan where loan_no=x and account_no=w;
   z:= b+b*(c/100)*y;
   return z;
END;   

FUNCTION findTotalLoan(w IN loan.account_no%type) return integer IS z integer;
BEGIN
   select sum(amount) into z from loan where account_no=w;
   return z;
END; 


PROCEDURE findInterest(w IN customer.account_no%type,x IN LOAN.LOAN_NO%type, y IN integer, z OUT real) IS 
BEGIN 
   select amount into b from loan where account_no=w;
   select interest into c from loan where loan_no=x and account_no=w;
   z:= b*(c/100)*y;
END;


create or replace PROCEDURE updateBalance(w in customer.account_no%type,x in integer,z out real) is 
BEGIN
    select balance into b from customer where account_no=w;
    c:= b+x;
    update customer set balance = c where account_no=w;
    select balance into z from customer where account_no=w;
END;


create or replace PROCEDURE TaxSystem(w in customer.account_no%type,z out varchar) is 
BEGIN
  select balance into b from customer where account_no=w;
  if b>100000
        then
            z := 'TAX Included';
        else         
            z := 'General Person';
    
      end if;
END;

BEGIN  
   d := findLoanAmount(1002,3002,3);
   dbms_output.put_line('Present loan amount: ' || d); 
   c:= findTotalLoan(1007);
   dbms_output.put_line('Present total loan amount: ' || c);
   findInterest(1002,3002,3,d);
   dbms_output.put_line('Present loan interset: ' || d);
   updateBalance(1001,500,d);
   dbms_output.put_line('Present balance: ' || d);
   TaxSystem(1002,tax);
   dbms_output.put_line(tax);
   
END; 
/
