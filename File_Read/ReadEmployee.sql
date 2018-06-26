SET SERVEROUTPUT ON;

DECLARE

F UTL_FILE.FILE_TYPE;
LINE VARCHAR(1000);
ID1         EMPLOYEE.EMPLOYEE_ID%TYPE;
NAME1       EMPLOYEE.NAME%TYPE;
STATUS1     EMPLOYEE.STATUS%TYPE;
BRANCH1     EMPLOYEE.BRANCH_NAME%TYPE;
SALARY1     EMPLOYEE.SALARY%TYPE;
PHONE1      EMPLOYEE.PHONE_NO%TYPE;
GENDER1     EMPLOYEE.GENDER%TYPE;
    

BEGIN
    F := UTL_FILE.FOPEN('CSE','Employee.csv','R');
    IF UTL_FILE.IS_OPEN(F) THEN 
    UTL_FILE.GET_LINE(F,LINE,1000);
    /*DBMS_OUTPUT.PUT_LINE(LINE);*/
    LOOP BEGIN
    UTL_FILE.GET_LINE(F,LINE,1000);
    IF LINE IS NULL THEN EXIT;
    END IF;
    /*DBMS_OUTPUT.PUT_LINE(LINE);*/
    NAME1       := REGEXP_SUBSTR(LINE,'[^,]+',1,2);
    ID1         := REGEXP_SUBSTR(LINE,'[^,]+',1,1);
    STATUS1     := REGEXP_SUBSTR(LINE,'[^,]+',1,3);
    BRANCH1     := REGEXP_SUBSTR(LINE,'[^,]+',1,4);
    SALARY1     := REGEXP_SUBSTR(LINE,'[^,]+',1,5);
    PHONE1      := REGEXP_SUBSTR(LINE,'[^,]+',1,6);
    GENDER1     := REGEXP_SUBSTR(LINE,'[^,]+',1,7);
    
    
    INSERT INTO EMPLOYEE VALUES(ID1,NAME1,STATUS1,BRANCH1,SALARY1,PHONE1,GENDER1);
    COMMIT;
    EXCEPTION WHEN NO_DATA_FOUND THEN EXIT;
    END;
    END LOOP;
    END IF;
    UTL_FILE.FCLOSE(F);
END;
/