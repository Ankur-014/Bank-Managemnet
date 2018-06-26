SET SERVEROUTPUT ON;
DECLARE
TYPE NAMELIST IS VARRAY(15) OF VARCHAR(20);
MYARR NAMELIST := NAMELIST();
COUNTER INTEGER :=0;
CURSOR C IS SELECT NAME FROM CUSTOMER WHERE BRANCH_NAME='KUET'; 
C_NAME CUSTOMER.NAME%TYPE;

BEGIN
	OPEN C;
	LOOP
	FETCH C INTO C_NAME;
	EXIT WHEN C%NOTFOUND;
	COUNTER :=COUNTER+1;
	MYARR.EXTEND;
	MYARR(COUNTER) :=C_NAME;

	END LOOP;
	dbms_output.put_line('List of KUET Branch Customer: ');
	FOR i IN 1..MYARR.count LOOP
	        dbms_output.put_line(MYARR(i));
	    END LOOP;
	CLOSE C;
	END;
/