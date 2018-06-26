set serveroutput on;
create or replace trigger branch_asset_ded
before insert or update on loan for each row
 
declare
b_asset branch.assets%type;
c_acc 	loan.account_no%type;
c_bra 	branch.branch_name%type;
c_bal 	loan.amount%type;

begin

	c_bal := :new.amount;
	c_acc := :new.account_no;

	select branch_name into c_bra from customer where account_no = c_acc;

	select assets into b_asset from branch where branch_name=c_bra; 
	
	b_asset := b_asset - c_bal;

	update branch set assets = b_asset where branch_name = c_bra;
	
end;
/