SET SERVEROUTPUT ON;
CREATE OR REPLACE TRIGGER BALANCE_UP
AFTER INSERT OR DELETE OR UPDATE ON LOAN FOR EACH ROW

DECLARE

CURSOR C IS SELECT BALANCE,ACCOUNT_NO FROM CUSTOMER;
BALANCE1 CUSTOMER.BALANCE%TYPE;
ACC_NO CUSTOMER.ACCOUNT_NO%TYPE;
ACCO LOAN.ACCOUNT_NO%TYPE;

BEGIN
    
    OPEN C;
    LOOP
        FETCH C INTO BALANCE1,ACC_NO;
        EXIT WHEN C%NOTFOUND;
        IF :NEW.ACCOUNT_NO = ACC_NO
            THEN 
            
            IF BALANCE1 >= 40000
               THEN 
                BALANCE1 := BALANCE1-(BALANCE1*:NEW.INTEREST)/100;
                ACCO := :NEW.ACCOUNT_NO;
                
                UPDATE CUSTOMER SET BALANCE = BALANCE1 WHERE ACCOUNT_NO = ACCO;
                DBMS_OUTPUT.PUT_LINE('YOUR BALANCE HAS BEEN DEDUCTED');
            END IF;
            
        END IF;
    END LOOP;
    CLOSE C;

END;
/ 