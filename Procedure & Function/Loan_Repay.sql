set serveroutput on;
DECLARE  
	b loan.amount%type;
	d integer;
   
PROCEDURE LoanRepay(w in loan.loan_no%type,y in loan.amount%type ,z out integer) is 
BEGIN
    select amount into b from loan where loan_no=w;
    b := b-y;
    if b=0
    then
        dbms_output.put_line('Congratulation. Your loan has been repayed');
        z := 0;
        delete from loan where loan_no=w;
    else
        update loan set amount = b where loan_no=w;
        select amount into z from loan  where loan_no=w;
    end if;

    
END;

BEGIN
	LoanRepay(3002,2000,d);
    dbms_output.put_line('Remain Loan Amount: ' || d); 
END;
/

