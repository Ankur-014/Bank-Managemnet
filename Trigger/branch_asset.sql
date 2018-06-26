set serveroutput on;
create or replace trigger branch_asset
before insert or update on customer for each row
 
declare
b_asset branch.assets%type;
c_bra 	customer.branch_name%type;
c_bal 	customer.balance%type;

begin
	c_bra := :new.branch_name;
	c_bal := :new.balance;
	select assets into b_asset from branch where branch_name = c_bra;
	b_asset := b_asset + c_bal;

	update branch set assets = b_asset where branch_name = c_bra;

end;
/