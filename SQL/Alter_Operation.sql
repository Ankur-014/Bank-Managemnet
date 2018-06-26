alter table branch
	add postal_code number(4);

alter table branch
	rename column postal_code to ZIP;

alter table branch
	modify ZIP varchar(20);

alter table branch
	drop column ZIP;