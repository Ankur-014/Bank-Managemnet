select distinct c.name,account_no from customer c natural join loan a;

select  e.name , b.city from employee e join branch b on e.branch_name = b.branch_name;