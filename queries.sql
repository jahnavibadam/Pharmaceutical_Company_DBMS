select * from pharmacy;

select * from patient where patient_age>30;

select * from employee where emp_salary>1300;

select * from pharmaceutical_company where company_id=100;

select composition from drug where drug_name='Tylenol';

select * from employee where emp_gender='F';

select * from employee where emp_address like '%Illinois%';

select avg(emp_salary) as Average_Salary from employee;

select count(*) from sells where stock<>0 and drug_id=(select drug_id from drug where drug_name='Acticlate');

select * from pharmaceutical_company where company_location not like '%New Jersey%';

select drug_name from drug where drug_id in (select drug_id from sells where selling_price<10);

select company_name from pharmaceutical_company where company_id in (select company_id from supplies natural join sells where stock<5 and store_id=3);

select distinct b.patient_id,patient_name,price from buys_from b,patient p where b.patient_id=p.patient_id;

insert into buys_from values (200,5,1);