set serveroutput on;
DECLARE  
    b customer.balance%type;
    d real;
   
PROCEDURE Cheque(w in customer.account_no%type,y in customer.balance%type ,z out real) is 
BEGIN
    select balance into b from customer where account_no=w;
    b := b-500;
    if b<=y
    then
        b :=500;
        dbms_output.put_line('Bank Overdraft'); 
        update customer set balance = b where account_no=w;
        select balance into z from customer where account_no=w;
        
    else
        b := b-y+500;
        update customer set balance = b where account_no=w;
        select balance into z from customer where account_no=w;
    end if;

    
END;

BEGIN
    Cheque(1002,2000,d);
    dbms_output.put_line('Present balance: ' || d); 
END;
/

