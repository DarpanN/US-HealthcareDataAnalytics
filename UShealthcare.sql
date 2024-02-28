CREATE TABLE Department (

    department_id INT PRIMARY KEY,

    department_name VARCHAR(50)

);



CREATE TABLE Employee (

    employee_id SERIAL PRIMARY KEY,

    employee_name VARCHAR(50),

    department_id INT,

    position VARCHAR(50),

    salary DECIMAL(10, 2),

    hire_date DATE,

    FOREIGN KEY (department_id) REFERENCES Department(department_id)

);

INSERT INTO Department (department_id, department_name)

VALUES 

(1, 'Management'),

(2, 'Development'),

(3, 'Analytics'),

(4, 'Design'),

(5, 'Engineering'),

(6, 'Architecture'),

(7, 'Data Science'),

(8, 'Finance'),

(9, 'Human Resources'),

(10, 'Marketing');



INSERT INTO Employee (employee_name, department_id, position, salary, hire_date)

VALUES

('John Doe 1', 1, 'Manager', 60000.00, '2022-01-01'),

('Jane Smith 2', 2, 'Developer', 70000.00, '2022-02-15'),

('Emily Johnson 3', 3, 'Analyst', 55000.00, '2022-03-20'),

('Mark Davis 4', 4, 'Designer', 65000.00, '2022-04-10'),

('Jessica Wilson 5', 5, 'Engineer', 75000.00, '2022-05-05'),

('Andrew Thompson 6', 6, 'Architect', 80000.00, '2022-06-20'),

('Olivia Garcia 7', 7, 'Data Scientist', 85000.00, '2022-07-15'),

('William Martinez 8', 8, 'Financial Analyst', 60000.00, '2022-08-12'),

('Sophia Robinson 9', 9, 'HR Specialist', 55000.00, '2022-09-25'),

('Daniel Clark 10', 10, 'Marketing Manager', 70000.00, '2022-10-30'),

('Ella Lee 11', 1, 'Software Engineer', 75000.00, '2022-11-10'),

('James Hernandez 12', 2, 'Product Manager', 80000.00, '2022-12-05'),

('Ava Walker 13', 3, 'System Analyst', 65000.00, '2023-01-15'),

('Logan Young 14', 4, 'UX Designer', 70000.00, '2023-02-28'),

('Mia Scott 15', 5, 'Database Administrator', 60000.00, '2023-03-20'),

('Benjamin King 16', 6, 'Network Engineer', 65000.00, '2023-04-18'),

('Harper Lopez 17', 7, 'Security Analyst', 75000.00, '2023-05-25'),

('Mason Hill 18', 8, 'Business Analyst', 70000.00, '2023-06-30'),

('Evelyn Green 19', 9, 'Recruiter', 55000.00, '2023-07-10'),

('Jacob Adams 20', 10, 'Content Writer', 60000.00, '2023-08-15'),

('Sophie Stewart 50', 10, 'Sales Representative', 65000.00, '2023-12-30'),

('Liam Moore 61', 1, 'Manager', 60000.00, '2021-11-01'),

('Olivia Taylor 62', 2, 'Developer', 70000.00, '2021-11-15'),

('Noah Anderson 63', 3, 'Analyst', 55000.00, '2021-11-20'),

('Ava Thomas 64', 4, 'Designer', 65000.00, '2021-12-10'),

('Sophia White 65', 5, 'Engineer', 75000.00, '2020-01-05'),

('William Harris 66', 6, 'Architect', 80000.00, '2020-01-20'),

('Evelyn Martin 67', 7, 'Data Scientist', 85000.00, '2020-02-15'),

('Michael Lee 68', 8, 'Financial Analyst', 60000.00, '2020-03-12'),

('Emily Garcia 69', 9, 'HR Specialist', 55000.00, '2020-03-25'),

('Ethan Baker 70', 10, 'Marketing Manager', 70000.00, '2020-04-30'),

('Isabella Hill 71', 1, 'Software Engineer', 75000.00, '2020-05-10'),

('James Young 72', 2, 'Product Manager', 80000.00, '2020-06-05'),

('Emma King 73', 3, 'System Analyst', 65000.00, '2020-07-15'),

('Logan Hall 74', 4, 'UX Designer', 70000.00, '2020-08-28'),

('Aiden Scott 75', 5, 'Database Administrator', 60000.00, '2020-09-20'),

('Mia Green 76', 6, 'Network Engineer', 65000.00, '2020-10-18'),

('Sophia Martinez 77', 7, 'Security Analyst', 75000.00, '2020-11-25'),

('Noah Lopez 78', 8, 'Business Analyst', 70000.00, '2020-12-30'),

('Ella Adams 79', 9, 'Recruiter', 55000.00, '2020-01-10'),

('Liam Turner 80', 10, 'Content Writer', 60000.00, '2020-02-15'),

('Noah Adams 51', 1, 'Manager', 60000.00, '2021-01-01'),

('Sophia Miller 52', 2, 'Developer', 70000.00, '2021-02-15'),

('Liam Johnson 53', 3, 'Analyst', 55000.00, '2021-03-20'),

('Ava Wilson 54', 4, 'Designer', 65000.00, '2021-04-10'),

('Oliver Thompson 55', 5, 'Engineer', 75000.00, '2021-05-05'),

('Emma Garcia 56', 6, 'Architect', 80000.00, '2021-06-20'),

('William Martinez 57', 7, 'Data Scientist', 85000.00, '2021-07-15'),

('Isabella Robinson 58', 8, 'Financial Analyst', 60000.00, '2021-08-12'),

('Mia Clark 59', 9, 'HR Specialist', 55000.00, '2021-09-25'),

('Ethan Hall 60', 10, 'Marketing Manager', 70000.00, '2021-10-30');



select  * from department;



select * from employee;


select count( distinct position) from employee e ;

select count(position) from employee e ;

select count (employee_id) from employee e ;

create table employee_new as
select * from employee; 

select * from employee_new;



update employee set  employee_name = 'Darpan'
where employee_id = 1;

select * from employee e ;


select employee_name from employee
order by employee_name asc ;

select department_id, count (employee_id) as employee_count, sum(salary) as salary from employee
group by department_id 
order by salary desc
limit 5;

select * from department d 
order by department_name desc;


select extract (year  from hire_date) from employee e ;

select extract(year from hire_date) as hire_year, count(employee_id) as employee_count
from employee 
group by hire_year
order  by 2 desc;

select extract(year from hire_date) as hire_year, department_id, count(employee_id) as employee_count
from employee 
group by hire_date, department_id
order  by employee_count desc;


select department_id,count(employee_id) as employee_count, sum(salary) as salary from employee 
group by department_id
having sum(salary)>30000;


select * from employee e ;


select * from department d ;

select employee_name, department_name from employee 
join department  on employee.department_id = department.department_id;

select employee_name, department_name from employee e 
join department d  on e.department_id = d.department_id;


select e.employee_name, e.department_id, d.department_name, e.position  
from employee e 
join department d 
on e.department_id = d.department_id;

select 
e.department_id,
d.department_name,
count(e.employee_id) as employee_count,
sum(e.salary) as salary
from employee e 
join department d 
 on e.department_id = d.department_id 
 group by e.department_id , d.department_id ;


--select * from employee e
--
--order by employee_id desc;
--
--
--create table employee as
--
--select * from employee_temp;
--
--
--drop table employee_temp;
--
--
--INSERT INTO Employee (employee_name, department_id, position, salary, hire_date)
--
--VALUES
--
--('John Doe 1', 11, 'Manager', 60000.00, '2022-01-01');
--
--
--
--update employee 
--
--set employee_name = 'Ram Shrestha'
--
--where employee_id = 1;
--
--
--
--delete from employee
--
--where employee_id = 51;
--
--
--select distinct department_id from employee;
--
--
--select
--
--	e.department_id,
--
--	d.department_name,
--
--	count(e.employee_id) as employee_count, 
--
--	sum(e.salary) as salary
--
--from employee e
--
--left join department d 
--
--on e.department_id = d.department_id
--
--group by e.department_id, d.department_name;
--
--
--
--
--select extract(year from hire_date) as hire_year, department_id, count(employee_id) as employee_count
--
--from employee
--
--group by hire_date, department_id
--
--order by employee_count desc;
--
--
--
--select  e.employee_name, e.department_id, d.department_name, e.position
--
--from employee e
--
--join department d 
--
--on e.department_id = d.department_id;




select * from elig e ;


drop table elig ;


select * from med m ;

select * from rx r ;

select paid_date::date from med m ;

select extract (year from paid_date::date) from med;


select sum(paid_amount::float)from med m ;



select age(dob) from elig e ;


select extract (year from age (dob)) from elig e ;



select
case 
	when extract (year from age (dob)) < 25 then '0-24'
    when extract (year from age (dob)) between 25 and 65 then '25-65'
    when extract (year from age (dob)) > 65 then '65+'
end as age_group
from elig e ;


select
case 
	when extract (year from age (dob)) < 25 then '0-24'
    when extract (year from age (dob)) between 25 and 65 then '25-65'
    when extract (year from age (dob)) > 65 then '65+'
end as age_group,
count (distinct pid)
from elig 
group by 1;



select
sum(
case 
	when extract (year from age (dob)) < 25 then 1
  else 0
  end)
from elig ;


select * from elig e ;




--1
--How many members have eligibility?



select  count (distinct pid) from elig e ;


--2
--How many members have medical claims?

select * from med m ;

select * from elig e ;

select * from rx r ;


select count (distinct pid) from med m ;


--3
--How many members have pharmacy claims?

select count(distinct pid) from rx r ;

--4
--What is the % of male and female distribution?
select gender, count (distinct pid)*100.00/(select count (distinct pid) from elig e ) from elig e  
group by 1;

--5
--What is the % of age distribution for 0-19, 20-65 and 65+ ?

select
case 
	when extract (year from age (dob)) < 20 then '0-19'
    when extract (year from age (dob)) between 20 and 65 then '20-65'
    when extract (year from age (dob)) > 65 then '65+'
end as age_group,
count(distinct pid)*100.00/(select count (distinct pid) from elig e ) as distribution
from elig e 
group by 1
order by 1;


--6
--What is the average medical cost for one medical claim?


select * from med m ;

select avg(paid_amount) from med m ;


--type cast to change the data type
select avg(paid_amount::real) from med m ;


--7
--What is the average medical cost for one member?

select pid, sum(paid_amount) 
from med m 
 group by 1;

--if sub query is source from another sub query need to notion give a name

select avg(paid)
from (select pid, sum(paid_amount) as paid 
from med m 
 group by 1)a;

--What is the cost distribution  of medical cost per age group? 

select
case 
	when extract (year from age (dob::date)) < 20 then '0-19'
    when extract (year from age (dob::date)) between 20 and 65 then '20-65'
    when extract (year from age (dob::date)) > 65 then '65+'
end as age_group,
sum(paid_amount) as cost_distribution  from med  
group by 1
order by 1;


select
case 
	when extract (year from age (dob::date)) < 20 then '0-19'
    when extract (year from age (dob::date)) between 20 and 65 then '20-65'
    when extract (year from age (dob::date)) > 65 then '65+'
end as age_group,
count(*) as claim_distribution,
sum(paid_amount) as cost_distribution  from med  
group by 1
order by 1;


--8
--What is the % cost distribution by Place of Service (POSCode)?


select * from med;

select distinct pos_code from med m ;

select pos_code, sum(paid_amount)*100.00/(select sum (paid_amount) from med) as cost_distribution
from med m group by 1
order by 2 desc;


--9
--What are the top 10 expensive procedures?


select * from rx r ;

select * from med m ;

select proc_code, proc_desc, sum(paid_amount) from med m 
group by 1, 2
order by 3 desc
limit 10;

select proc_code, proc_desc, sum(paid_amount) as cost_distribution from med m 
group by proc_code, proc_desc 
order by cost_distribution desc
limit 10;




--10
--What are the top 10 diagnosis causing high cost?

select diag_code_1,diag_desc_1, sum(paid_amount) as total_cost from med m 
group by 1, 2
order by 3 desc
limit 10;






--11
--What is the average Rx cost for one pharmacy claim?

select * from rx r ;

select * from med m ;

select * from elig e ;

SELECT  claim_id, AVG(paid_amount) AS average_rx_cost
FROM med m 
group by  claim_id
limit 1;






--12
--What is the average Rx cost for one member?
select * from rx r ;

select * from med m ;

select * from elig e ;


   
   
   SELECT
    distinct (claim_id),
    AVG(paid_amount) AS average_rx_cost
FROM
    rx
GROUP by claim_id 
limit 1;



--13
--What are the top 10 expensive drugs?
   
--   SELECT
--    distinct (drug_type_code),
--    paid_amount
--FROM
--    rx
--ORDER BY
--    paid_amount  DESC
--LIMIT 10;

SELECT DISTINCT ON (drug_type_code) drug_type_code, paid_amount
FROM rx
ORDER BY drug_type_code, paid_amount DESC
LIMIT 10;



  
select * from rx r ;

select * from med m ;

select * from elig e ;



   
--14
--Who are the top 10 prescribers causing high cost?

select * from rx r limit 10 ;

select * from med m limit 5;

select prescriber_id, pharmacy_id, prescriber_name,  paid_amount 
from rx r 
group by prescriber_id, pharmacy_id, paid_amount, prescriber_name 
order by paid_amount desc 
limit 10;


--SELECT
--    prescriber_id,
--    pharmacy_id,
--    prescriber_name,
--    paid_amount
--FROM
--    rx
--ORDER BY
--    paid_amount DESC
--LIMIT 10;




--15
--What is the % of generic and branded drugs?

SELECT
    drug_type_code, generic_flag, 
    COUNT(*) AS drug_count,
    (COUNT(*) * 100.0 / (SELECT COUNT(*) FROM rx r)) AS percentage
FROM
    rx 
GROUP BY
    drug_type_code,
   generic_flag ;




--1
--What is the avg. number of eligibility records for one member?
  select  avg(total_records) from
(select pid, count(*) as total_records from elig e 
group by pid)a;

   
--2
--What % of eligible members have medical claims?
   
-- select * from med m  
--where pid in (select distinct pid from elig e);
--
-- select * from med m  
--where pid::text in (select distinct pid from elig e);


 select count (distinct pid)*100.00/(select count (distinct pid) from elig e )
 from med m 
where pid::text in (select distinct pid from elig e);




   
--3
--What % of eligible members have pharmacy claims?
   
   
 select count (distinct pid)*100.00/(select count (distinct pid)
 from elig e )
 from rx r 
where pid::text in (select distinct pid 
from elig e);


--4
--What is the benefit coverage duration in this dataset (max and min of benefit dates)?
   
   
 select max(coverage_end_date), min(coverage_end_date) from elig e ;
 
 

--5
--What % of eligible members have coverage across the full benefit coverage duration?
select count(distinct a.pid) * 100.00/(select count(distinct e.pid)from elig e) 
from(
select pid, count(*) as total_records 
from elig e 
group by pid
having count(*)=26)a;
 
 
--6
--What % of eligible members have coverage across more than 50% coverage duration?
   
 select count(distinct a.pid) * 100.00/(select count(distinct e.pid)from elig e) 
from(
select pid, count(*) as total_records 
from elig e 
group by pid
having count(*)> 13)a;


   
--7
--Which gender and age-groups are causing high medical cost?
   
   select
case 
	when extract (year from age (dob::date)) < 20 then '0-19'
    when extract (year from age (dob::date)) between 20 and 65 then '20-65'
    when extract (year from age (dob::date)) > 65 then '65+'
end as age_group,
gender,
count(*) as pid,
sum(paid_amount) as cost_distributation  
from med m  
group by age_group, gender
order by cost_distributation desc;

   
--8
--What is the monthly trend of total medical cost by service date?

select * from med m ;

--service from date and paid date

select 
to_char(service_from_date::date, 'Month') as month, 
sum(paid_amount) as total_cost from med m 
group by month 
order by total_cost desc;


--this is for numeric data
--select extract (month from service_from_date::date) from med m ;



select
extract (year from service_from_date::date) as year,
to_char(service_from_date::date, 'Month') as month, 
sum(paid_amount) as total_cost 
from med m 
group by year, month 
order by year;

   
--9
--What is the monthly trend of total medical cost by paid date?
 
select
extract (year from paid_date::date) as year,
to_char(paid_date::date, 'Month') as month, 
sum(paid_amount) as total_cost 
from med m 
group by year, month 
order by year;

   
--10
--What is the monthly trend of total rx cost by service date?
   
  SELECT
  EXTRACT(YEAR FROM prescription_written_date::date) AS year,
  TO_CHAR(prescription_written_date::date, 'Month') AS month,
  SUM(paid_amount) AS total_rx_cost
FROM
  rx r 
GROUP BY
  year, month
ORDER BY
  year ;
 
 select * from rx r ;


   
--11
--What is the monthly trend of total rx cost by paid date?
 
 SELECT
  EXTRACT(YEAR FROM paid_date::date) AS year,
  TO_CHAR(paid_date::date, 'Month') AS month,
  SUM(paid_amount) AS total_rx_cost
FROM
  rx r 
GROUP BY
  year, month
ORDER BY
  year;

 
 select * from rx r ;
   
--12
--Which gender and age-groups are causing high Rx cost?
   
select * from rx r ;

select * from med m ;

select * from elig e ;

select coverage_end_date, to_char(coverage_end_date,'yyyy-mm-01') from elig e ; 
update elig 
set coverage_begin_date = to_char(coverage_end_date, 'yyyy-mm-01') ;



select gender,
case 
	when extract (year from age (dob)) < 20 then '0-19'
    when extract (year from age (dob)) between 20 and 65 then '20-65'
    when extract (year from age (dob)) > 65 then '65+'
end as age_group,
count(*) as pid,
sum(paid_amount) as paidamount 
from rx  
group by age_group, gender
order by 1;


select gender,
case 
	when extract (year from age (dob)) < 20 then '0-19'
    when extract (year from age (dob)) between 20 and 65 then '20-65'
    when extract (year from age (dob)) > 65 then '65+'
end as age_group,
sum(paid_amount) as paidamount 
from rx  
group by age_group, gender
order by 1;





update master_diag
set "'ICD-10-CM CODE'" = replace ("'ICD-10-CM CODE'", '''','');

 --changing table dxccsr_v2023 dv to master_daig;
alter table dxccsr_v2023 
rename to master_diag;


--select * from dxccsr_v2023 dv ;


select * from master_diag;






select * from elig;
select * from rx;


select replace("'ICD-10-CM CODE'" , '''', '' ) from master_diag dv
update master_diag
set "Default_CCSR_CATEGORY_IP" = replace
("Default_CCSR_CATEGORY_IP", '''','');

select * from master_diag;

select "Default_CCSR_CATEGORY_IP" from master_diag md;

alter table dxccsr_v2023
rename to master_diag;

alter table rbcs_taxonomy_final_cy03 
rename to Master_proc;


select * from master_proc mp ;

select "Default_CCSR_CATEGORY_IP"  from master_diag md ;




select diag_code_1, md.default_ccsr_category_description_ip  from med m 
join master_diag md 
on m.diag_code_1 = md.code;


update master_diag 
set "Code"  = replace ("Code" , '''','');


select * from med m ;

select * from master_diag md ;



select md.default_ccsr_category_description_ip , sum(m.paid_amount) from med m 
join master_diag md 
on m.diag_code_1 = md.code 
group by 1
order by 2 desc 
limit 10;

select md.default_ccsr_category_description_ip, sum(m.paid_amount), count(m.claim_id) as total_claims from med m 
join master_diag md 
on m.diag_code_1 = md.code 
group by 1
order by 2 desc 
limit 10;


select * from master_proc mp ;

--select md.default_ccsr_category_description_ip , sum(m.paid_amount), count(m.claim_id) as total_claims from med m 
--join master_diag md 
--on m.diag_code_1 = md.code 
--group by 1
--order by 2 desc 
--limit 10;


select mp.rbcs_subcat_desc , sum(m.paid_amount) as total_amount, count(*) from med m 
join master_proc mp 
on 
m.proc_code  = mp.hcpcs_cd  
group by 1
order by 2 desc 
limit 10;


select mp.rbcs_subcat_desc , sum(m.paid_amount) as total_amount, count(*) from med m 
join master_proc mp 
on 
m.diag_code_1  = mp.hcpcs_cd  
group by 1
order by 2 desc 
limit 10;


select mp.rbcs_subcat_desc , sum(m.paid_amount) as total_amount
from med m 
left join master_proc mp 
on 
m.proc_code  = mp.hcpcs_cd  
group by 1
order by 2 desc 
limit 10;

--select e.pid, sum(m.paid_amount)
--from elig e 
--join med m 
--on e.pid = m.pid 
--group by 1;



select mp.rbcs_subcat_desc, sum(m.paid_amount) as total_amount, count(*) from med m 
left join master_proc mp 
on 
m.proc_code  = mp.hcpcs_cd 
group by 1
order by 2 desc 
limit 10;



--alter table master_diag 
--rename to master_diag_temp;
--
--
--alter table master_proc 
--rename to master_proc_temp;



CREATE TABLE master_diag (
	code text NULL,
	description text NULL,
	default_ccsr_category_ip text NULL,
	default_ccsr_category_description_ip text NULL,
	default_ccsr_category_op text NULL,
	default_ccsr_category_description_op text NULL,
	ccsr_category_1 text NULL,
	ccsr_category_1_description text NULL,
	ccsr_category_2 text NULL,
	ccsr_category_2_description text NULL,
	ccsr_category_3 text NULL,
	ccsr_category_3_description text NULL,
	ccsr_category_4 text NULL,
	ccsr_category_4_description text NULL,
	ccsr_category_5 text NULL,
	ccsr_category_5_description text NULL,
	ccsr_category_6 text NULL,
	ccsr_category_6_description text null);

select * from master_diag md ;

--insert into master_diag select * from master_diag_temp;


CREATE TABLE master_proc (
	hcpcs_cd text NULL,
	rbcs_id text NULL,
	rbcs_cat text NULL,
	rbcs_cat_desc text NULL,
	rbcs_cat_subcat text NULL,
	rbcs_subcat_desc text NULL,
	rbcs_famnumb text NULL,
	rbcs_family_desc text NULL,
	rbcs_major_ind text NULL,
	hcpcs_cd_add_dt text NULL,
	hcpcs_cd_end_dt text NULL,
	rbcs_assignment_eff_dt text NULL,
	rbcs_assignment_end_dt text null);


select * from master_diag md ;

--insert into master_proc  select * from master_proc_temp;

select rbcs_subcat_desc from master_proc mp ;




--select coverage_end_date, to_char(coverage_end_date,'yyyy-mm-01') from elig e ; 
--update elig 
--set coverage_begin_date = to_char(coverage_end_date, 'yyyy-mm-01') ;


CREATE TABLE mm_table (

    pid varchar,
    month date,
    mm int 

);



select * from mm_table;


select distinct  pid from elig e ;
select distinct coverage_begin_date from elig e ;


--select distinct pid, a.month::date
--from elig e 
--cross join
--(select distinct coverage_begin_date as month from elig)a
--order by pid, month;

insert  into mm_table
select distinct pid, a.month::date
from elig e 
cross join
(select distinct coverage_begin_date as month from elig)a
order by pid, month;

select * from mm_table mt ;


select mt.pid, mt.month,
case when mt.month between e.coverage_begin_date::date and e.coverage_end_date then 1
else 0
end as mm
from mm_table mt 
join elig e 
on mt.pid  = e.pid ;


--update mm_table 
--set mm = a.mm
--from (
--select
--mt.pid,
--mt.month,
--case when mm_table between e.coverage_begin_date::date and e.coverage_end_date then 1
--else 0
--end as mm 
--from mm_table mt
--join
--elig e 
--on mt.pid = e.pid
--)a
--where a.pid = mm.pid and a.month = mm.month;



update mm_table mt 
set mm =
case 
 when 
 exists (
 select 1 from elig e
 where mt.month between e.coverage_begin_date::date and e.coverage_end_date 
 and mt.pid = e.pid
 )
then 1 
else 0
end;

select * from mm_table mt ;

select sum(mm) from mm_table mt ;
select count (*) from elig e ;

select sum(paid_amount) from med m ;

--overall med pmpm
select sum(paid_amount)/(select sum(mm) from mm_table mt ) as pmpm
from med m ;

--over all rx pmpm
select sum(paid_amount)/(select sum(mm) from mm_table mt ) as pmpm
from rx r ;

--per member total mm amount
select pid, sum(mm) from mm_table mt 
group by 1;

select pid, sum(paid_amount) as total_paid
from med m 
group by 1;

--member level pmpm

select a.pid, a.total_mm, b.total_paid, b.total_paid/a.total_mm as pmpm
from
(select pid, sum(mm)as total_mm from mm_table mt 
group by 1)a
join
(select pid, sum(paid_amount) as total_paid
from med m 
group by 1)b
on a.pid = b.pid;


select * from med m ;

select * from mm_table mt ;

--year level pmpm

select a.year, a.total_mm, b.total_paid, b.total_paid/a.total_mm as pmpm
from
(select extract (year from mt."month") as year, sum(mm)as total_mm from mm_table mt 
group by 1) a
join
(select extract (year from m.service_from_date::date) as year, sum(paid_amount) as total_paid
from med m 
group by 1) b
on a.year = b.year;



select diag_code_1,diag_desc_1, sum(paid_amount) as total_cost from med m 
group by 1, 2
order by 3 desc
limit 10;


--top 10 diagnsis pmpm
select diag_code_1, sum(paid_amount)/(select sum(mm) from mm_table) as pmpm
from med m 
group by 1
order by 2 desc 
limit 10;


--top 10 procedure pmpm
--top 10 drug pmpm


--top 10 diagnosis units per 1000

select diag_code_1, count(claim_id) * 12 * 1000.00 / (select sum(mm) from mm_table)
as units_per_k
from med m 
group by 1
order by 2 desc
limit 10;


select diag_code_1, m.diag_desc_1, count(claim_id) * 12 * 1000.00 / (select sum(mm) from mm_table mt where mt."month" between '2022-01-01' and '2022-12-31')
as units_per_k
from med m 
where m.service_from_date::date between  '2022-01-01' and '2022-12-31'
group by 1, 2
order by 3 desc
limit 10;


select md.default_ccsr_category_description_ip, md.default_ccsr_category_description_ip, 
count(claim_id) * 12 * 1000.00 / (select sum(mm) from mm_table mt where mt."month" between '2022-01-01' and '2022-12-31')
as units_per_k
from med m 
join master_diag md 
on m.diag_code_1 =md.code
where m.service_from_date::date between  '2022-01-01' and '2022-12-31'
group by 1, 2
order by 3 desc
limit 10;


select * from master_diag md ;

--top 10 units per k and top 10 member per k

select md.default_ccsr_category_description_ip, md.default_ccsr_category_description_ip, 
count(claim_id) * 12 * 1000.00 / (select sum(mm) from mm_table mt where mt."month" between '2022-01-01' and '2022-12-31')
as units_per_k,
count(distinct pid) * 12 * 1000.00 / (select sum(mm) from mm_table mt where mt."month" between '2022-01-01' and '2022-12-31')
as member_per_k
from med m 
join master_diag md 
on m.diag_code_1 =md.code
where m.service_from_date::date between  '2022-01-01' and '2022-12-31'
group by 1, 2
order by 3 desc
limit 10;

--top 10  procedure units per k

select m.proc_code, m.proc_desc,  
	count(claim_id) * 12 *1000.00 / (select sum(mm) from mm_table mt where mt."month" between '2022-01-01' and '2022-12-31')
	as units_per_k,
	count(distinct pid) * 12 *1000.00 / (select sum(mm) from mm_table mt where mt."month" between '2022-01-01' and '2022-12-31')
	as member_per_k
from med m
where m.service_from_date::date between '2022-01-01' and '2022-12-31' 
group by 1,2
order by 3 desc
limit 10;


--top 10 procedure group units per k 

select mp.rbcs_cat_subcat, mp.rbcs_subcat_desc,  
	count(claim_id) * 12 *1000.00 / (select sum(mm) from mm_table mt where mt."month" between '2022-01-01' and '2022-12-31')
	as units_per_k,
	count(distinct pid) * 12 *1000.00 / (select sum(mm) from mm_table mt where mt."month" between '2022-01-01' and '2022-12-31')
	as member_per_k
from med m
join master_proc mp  
on m.proc_code = mp.hcpcs_cd 
where m.service_from_date::date between '2022-01-01' and '2022-12-31' 
group by 1,2
order by 3 desc
limit 10;



-- top 10 drugs per k


--DATA QUALITY CONTROL QC


-----CHECK FOR NULL pid

select COUNT (*) from elig e ;

select COUNT (*) from elig e 
where pid is null;


--check for null mf_name

select COUNT(*) from elig e 
where mf_name is null or mf_name = '';

--check for null ml_name
select COUNT(*) from elig e 
where ml_name is null or ml_name = '';

--check for null gender
select COUNT(*) from elig e 
where gender  is null or gender  = '';

--check for null gender values
select COUNT(*) from elig e 
where gender not in ('M', 'F', 'U');

--CHECK FOR NULL EFFECTIVE DATE
select COUNT(*) from elig e 
where coverage_begin_date is null or coverage_begin_date = '' or coverage_begin_date = '9999-12-31';


select COUNT(*) from elig e 
where coverage_end_date is null or coverage_end_date = '9999-12-31';


-- here done ttype cast for date formate convert
select count(*) from elig e 
where coverage_end_date < coverage_begin_date::date; 

select distinct health_plan_id from elig e;

select COUNT(*) from elig e
where health_plan_id not in ('HPO3');


--CHECK DUBLICATES DATA
select COUNT(*) from med m ;

select *, COUNT(*) from med m
group by pid, mf_name, ml_name, gender, dob, claim_id, claim_line_seq, 
service_provider_npi, billing_provider_npi, provider_first_name, provider_last_name,
provider_name, provider_specialty, pos_code, pos_desc, admiting_diag, diag_code_1,
diag_desc_1, diag_code_2, diag_desc_2, diag_code_3, diag_desc_3, proc_type, proc_code,
proc_desc, rev_code, rev_desc, cpt_code, cpt_desc, icd_proc_code_1, icd_proc_desc_1, 
icd_proc_code_2, icd_proc_desc_2, drg_type, drg_code, drg_desc, hcpcs_code, hcpcs_desc,
proc_mode_code_1, proc_mode_desc_1, proc_mode_code_2, proc_mode_desc_2, adm_type, 
service_from_date, service_to_date, process_date, paid_date, billed_amount, allowed_amount, 
network_saving_amount, copay_amount, coins_amount, deductible_amount, not_covered_amount,
cob_paid_amount, other_paid_amount, paid_amount, payment_type, file_path, load_date
having COUNT(*) >1;


--CHECH DISTINCT FOR ALL FIELD MED TABLE
select distinct * from med m ;


--SINGLE FIELD DISTINCT VALU CHECK
--select distinct pid  from med m ;

--alter table med rename to med_temp table to copy data in next table
alter table med rename to med_temp;

select distinct * from med_temp;


--create med table data copied from previous dublicates table med_temp
create table med as
select distinct * from med_temp m;


select * from med;

--check dublicates for med table
select *, COUNT(*) from med m
group by pid, mf_name, ml_name, gender, dob, claim_id, claim_line_seq, 
service_provider_npi, billing_provider_npi, provider_first_name, provider_last_name,
provider_name, provider_specialty, pos_code, pos_desc, admiting_diag, diag_code_1,
diag_desc_1, diag_code_2, diag_desc_2, diag_code_3, diag_desc_3, proc_type, proc_code,
proc_desc, rev_code, rev_desc, cpt_code, cpt_desc, icd_proc_code_1, icd_proc_desc_1, 
icd_proc_code_2, icd_proc_desc_2, drg_type, drg_code, drg_desc, hcpcs_code, hcpcs_desc,
proc_mode_code_1, proc_mode_desc_1, proc_mode_code_2, proc_mode_desc_2, adm_type, 
service_from_date, service_to_date, process_date, paid_date, billed_amount, allowed_amount, 
network_saving_amount, copay_amount, coins_amount, deductible_amount, not_covered_amount,
cob_paid_amount, other_paid_amount, paid_amount, payment_type, file_path, load_date
having COUNT(*) >1;




--check dublicates for rx table 
select *, count(*) from rx r 
group by pid, mf_name, ml_name, gender, dob, claim_id, 
provider_npi, provider_name, prescriber_id, prescriber_name, 
pharmacy_id, ndc_code, ndc_desc, drug_type_code, drug_type_desc, 
metric_qty, days_supply, specialty_flag, formulary_flag, generic_flag, 
prescription_written_date, filled_date, paid_date, ingrediant_cost, billed_amount, 
allowed_amount, copay_amount, coins_amount, deductible_amount, dispensing_fee, sales_tax_amount, 
usual_customary_amount, paid_amount, file_path, load_date
having count(*) >1;



--rx table 
alter table rx rename to rx_temp;

create table rx as
select distinct * from rx_temp r;

select * from rx r ;

--check dublicates for table elig

select *, count(*) from elig e 
group by pid, mf_name, ml_name, gender, dob, health_plan_id, 
health_plan_name, plan_id, plan_name, coverage_type, coverage_begin_date,
coverage_end_date, pcp_npi, pcp_name, file_path, load_date
having count(*) > 1;


alter table elig rename to elig_temp;

create table elig as
select distinct * from elig_temp e;

select * from elig e ;

select diag_code_1, count(distinct diag_desc_1) from med m 
group by diag_code_1 
having count(distinct diag_desc_1) > 1;

select distinct diag_desc_1 from med where diag_code_1 = 'E559' ;


--check single diag_code with multipale diag_desc_1
select 
      count(*)
from (
    select diag_code_1, count(distinct diag_desc_1) from med m 
    group by diag_code_1 
    having count(distinct diag_desc_1) > 1
)a;






--DATA QUALITY
-- 1) total recoord count
select count(*) from med m ;
--6,637


select
	*,
	case
		when expected_count = actual_count then 'PASS'
		else 'FAIL'
	end as result
from
	(
	select
		'Test' as client,
		'medical_table' as table_name,
		'total records count' as test_case,
		current_date as batch,
		6637 as expected_count,
		count(*) as actual_count
	from
		med m)a ;


-- 2) distinct member count
select count(distinct pid) from med m ;
--74

select
	*,
	case
		when expected_count = actual_count then 'PASS'
		else 'FAIL'
	end as result
from
	(
	select
		'Test' as client,
		'medical_table' as table_name,
		'distinct member count' as test_case,
		current_date as batch,
		74 as expected_count,
		count(distinct pid) as actual_count
	from
		med m )a;
    
    

-- 3) distinct claim count
select count(distinct claim_id) from med;
--1859

select
	*,
	case
		when expected_count = actual_count then 'PASS'
		else 'FAIL'
	end as result
from
	(
	select
		'Test' as client,
		'medical_table' as table_name,
		'distinct claim count' as test_case,
		current_date as batch,
		1859 as expected_count,
		count(distinct claim_id) as actual_count
	from
		med m)a;



-- 4) total paid amount
select sum(paid_amount) from med m ;
-- 1,007,469.2


select
	*,
	case
		when expected_count = actual_count then 'PASS'
		else 'FAIL'
	end as result
from
	(
	select
		'Test' as client,
		'medical_table' as table_name,
		'total paid amount' as test_case,
		current_date as batch,
		1007469.2 as expected_count,
		sum(paid_amount) as actual_count
	from
		med m )a;


-- 5) distinct plans
--select count(*) from med m ;
-- 1
   
select
	*,
	case
		when expected_count = actual_count then 'PASS'
		else 'FAIL'
	end as result
from
	(
	select
		'Test' as client,
		'medical_table' as table_name,
		'distinct plans' as test_case,
		current_date as batch,
		1 as expected_count,
		count(*) as actual_count
	from
		med m)a ;
   
   

-- 6) check for null pid
select count(*) from med m where pid is null;
--0

select
	*,
	case
		when expected_count = actual_count then 'PASS'
		else 'FAIL'
	end as result
from
	(
	select
		'Test' as client,
		'medical_table' as table_name,
		'check for null pid' as test_case,
		current_date as batch,
		0 as expected_count,
		count(*) as actual_count
	from
		med m
	where
		pid is null)a;
     
     

-- 7) check for null mf_name
select count(*) from med m where mf_name is null or mf_name = '';
--6,637


 select
	*,
	case
		when expected_count = actual_count then 'PASS'
		else 'FAIL'
	end as result
from
	(
	select
		'Test' as client,
		'medical_table' as table_name,
		'check for null mf_name' as test_case,
		current_date as batch,
		0 as expected_count,
		count(*) as actual_count
	from
		med m
	where
		mf_name is null
		or mf_name = '')a;




-- 8) check for null ml_name
select count(*) from med m where ml_name is null or ml_name = '';
--6,637


select
	*,
	case
		when expected_count = actual_count then 'PASS'
		else 'FAIL'
	end as result
from
	(
	select
		'Test' as client,
		'medical_table' as table_name,
		'check for null ml_name' as test_case,
		current_date as batch,
		0 as expected_count,
		count(*) as actual_count
	from
		med m
	where
		ml_name is null
		or ml_name = '')a;

-- 9) check for null gender
select count(*) from med m where gender is null or gender = '';
-- 0

select
	*,
	case
		when expected_count = actual_count then 'PASS'
		else 'FAIL'
	end as result
from
	(
	select
		'Test' as client,
		'medical_table' as table_name,
		'check for null gender' as test_case,
		current_date as batch,
		0 as expected_count,
		count(*) as actual_count
	from
		med m
	where
		gender is null
		or gender = '')a;



-- 10) check for values of gender
select count(*) from med m where gender not in ('M', 'F', 'U');
--0


select
	*,
	case
		when expected_count = actual_count then 'PASS'
		else 'FAIL'
	end as result
from
	(
	select
		'Test' as client,
		'medical_table' as table_name,
		'check for values of gender' as test_case,
		current_date as batch,
		0 as expected_count,
		count(*) as actual_count
	from
		med m
	where
		gender not in ('M', 'F', 'U'))a;



-- 11) check for null dob
select count(*) from med m where dob is null or dob = '';
--0

select
	*,
	case
		when expected_count = actual_count then 'PASS'
		else 'FAIL'
	end as result
from
	(
	select
		'Test' as client,
		'medical_table' as table_name,
		'check for null dob' as test_case,
		current_date as batch,
		0 as expected_count,
		count(*) as actual_count
	from
		med m
	where
		dob is null
		or dob = '')a;


-- 12) check for null claim_id
select count(*) from med where claim_id is null or claim_id = '';
--0


select
	*,
	case
		when expected_count = actual_count then 'PASS'
		else 'FAIL'
	end as result
from
	(
	select
		'Test' as client,
		'medical_table' as table_name,
		'check for null claim_id' as test_case,
		current_date as batch,
		0 as expected_count,
		count(*) as actual_count
	from
		med
	where
		claim_id is null
		or claim_id = '')a;
	


-- 13) check for null claim_line_seq
select count(*) from med where claim_line_seq  is null or claim_line_seq = '';
--0

 select
	*,
	case
		when expected_count = actual_count then 'PASS'
		else 'FAIL'
	end as result
from
	(
	select
		'Test' as client,
		'medical_table' as table_name,
		'check for null claim_line_seq' as test_case,
		current_date as batch,
		0 as expected_count,
		count(*) as actual_count
	from
		med
	where
		claim_line_seq is null
		or claim_line_seq = '')a;

	

-- 14) check if claim_id and claim_line_seq is unique 
select claim_id, claim_line_seq, count(*) from med m 
group by 1,2
having count(*)>1 and sum(paid_amount)>0;

select
	*, 
		case
		when expected_count = actual_count then 'PASS'
		else 'FAIL'
	end as result
from
	(
	select
		'Test' as client,
		'medical_claims' as table_name,
		'check if claim_id and claim_line_seq is unique' as test_case,
		current_date as batch,
		0 as expected_count,
		count(*) as actual_count
	from
		(
		select
			claim_id,
			claim_line_seq,
			count(*)
		from
			med m
		group by
			1,
			2
		having
			count(*)>1
			and sum(paid_amount)>0)a
	)b;



-- 15) check for null service_provider_npi
select count(*) from med m where service_provider_npi is null or service_provider_npi = '';
-- 0

select
	*,
	case
		when expected_count = actual_count then 'PASS'
		else 'FAIL'
	end as result
from
	(
	select
		'Test' as client,
		'medical_table' as table_name,
		'check for null service_provider_npi' as test_case,
		current_date as batch,
		0 as expected_count,
		count(*) as actual_count
	from
		med m
	where
		service_provider_npi is null
		or service_provider_npi = '')a;


-- 16) check for null billing_provider_npi
select count(*) from med m where billing_provider_npi is null or billing_provider_npi = '';
--257

select
	*,
	case
		when expected_count = actual_count then 'PASS'
		else 'FAIL'
	end as result
from
	(
	select
		'Test' as client,
		'medical_table' as table_name,
		'check for null billing_provider_npi' as test_case,
		current_date as batch,
		257 as expected_count,
		count(*) as actual_count
	from
		med m
	where
		billing_provider_npi is null
		or billing_provider_npi = '')a;



-- 17) check for null pos_code
select count(*) from med m where pos_code is null or pos_code = '';
--0

select
	*,
	case
		when expected_count = actual_count then 'PASS'
		else 'FAIL'
	end as result
from
	(
	select
		'Test' as client,
		'medical_table' as table_name,
		'check for null pos_code' as test_case,
		current_date as batch,
		0 as expected_count,
		count(*) as actual_count
	from
		med m
	where
		pos_code is null
		or pos_code = '')a;




-- 18) check for distinct pos_code
select count(distinct pos_code) from med m; 
-- 15

select
	*,
	case
		when expected_count = actual_count then 'PASS'
		else 'FAIL'
	end as result
from
	(
	select
		'Test' as client,
		'medical_table' as table_name,
		'check for distinct pos_code' as test_case,
		current_date as batch,
		15 as expected_count,
		count(distinct pos_code) as actual_count
	from
		med m)a;
	


-- 19) check for null diag_code_1
select count(*) from med m where diag_code_1 is null or diag_code_1 = '')a;
--0

select
	*,
	case
		when expected_count = actual_count then 'PASS'
		else 'FAIL'
	end as result
from
	(
	select
		'Test' as client,
		'medical_table' as table_name,
		'check for null diag_code_1' as test_case,
		current_date as batch,
		0 as expected_count,
		count(*) as actual_count
	from
		med m
	where
		diag_code_1 is null
		or diag_code_1 = '')a;



-- 20) check for null diag_desc_1
select count(*) from med m where diag_desc_1 is null or diag_desc_1 = '';
--0

select
	*,
	case
		when expected_count = actual_count then 'PASS'
		else 'FAIL'
	end as result
from
	(
	select
		'Test' as client,
		'medical_table' as table_name,
		'check for null diag_desc_1' as test_case,
		current_date as batch,
		0 as expected_count,
		count(*) as actual_count
	from
		med m
	where
		diag_desc_1 is null
		or diag_desc_1 = '')a;


--21) check distinct diag_code_1
select count(distinct diag_code_1) from med m; 
--441

select
	*,
	case
		when expected_count = actual_count then 'PASS'
		else 'FAIL'
	end as result
from
	(
	select
		'Test' as client,
		'medical_table' as table_name,
		'check distinct diag_code_1' as test_case,
		current_date as batch,
		441 as expected_count,
		count(distinct diag_code_1) as actual_count
	from
		med m)a;
	
	

-- 22) check if same diag code has multiple description
select count(*) from (
	select diag_code_1, count(distinct diag_desc_1) from med m 
	group by 1
	having count(distinct diag_desc_1)>1
)a;
-- 84


select
	*,
	case
		when expected_count = actual_count then 'PASS'
		else 'FAIL'
	end as result
from
	(
	select
		'Test' as client,
		'medical_table' as table_name,
		'check if same diag code has multiple description' as test_case,
		current_date as batch,
		84 as expected_count,
		count(*) as actual_count
	from
		(
		select
			diag_code_1,
			count(distinct diag_desc_1)
		from
			med m
		group by
			1
		having
			count(distinct diag_desc_1)>1
)a
)b;



-- 23) check if same description has multiple diag code
select count(*) from (
	select diag_desc_1, count(distinct diag_code_1) from med m 
	group by 1
	having count(distinct diag_code_1)>1
)a;
-- 98


select
	*,
	case
		when expected_count = actual_count then 'PASS'
		else 'FAIL'
	end as result
from
	(
	select
		'Test' as client,
		'medical_table' as table_name,
		'check if same description has multiple diag code' as test_case,
		current_date as batch,
		98 as expected_count,
		count(*) as actual_count
	from
		(
		select
			diag_desc_1,
			count(distinct diag_code_1)
		from
			med m
		group by
			1
		having
			count(distinct diag_code_1)>1
)a
)b;



--24) check for distinct proc_type
select count(*) from med m where proc_type not in ('CPT4', 'HCPCS', 'REV CODE', 'DRG 27');
-- 1
--specific proc_type
select distinct proc_desc  from med m where proc_code = 'U0005';


select
	*,
	case
		when expected_count = actual_count then 'PASS'
		else 'FAIL'
	end as result
from
	(
	select
		'Test' as client,
		'medical_table' as table_name,
		'check for distinct proc_type' as test_case,
		current_date as batch,
		1 as expected_count,
		count(*) as actual_count
	from
		med m
	where
		proc_type not in ('CPT4', 'HCPCS', 'REV CODE', 'DRG 27'))a;


 



-- 25) check for null proc_type
select count(*) from med m where proc_type is null or proc_type = '';
--1

select
	*,
	case
		when expected_count = actual_count then 'PASS'
		else 'FAIL'
	end as result
from
	(
	select
		'Test' as client,
		'medical_table' as table_name,
		'check for null proc_type' as test_case,
		current_date as batch,
		1 as expected_count,
		count(*) as actual_count
	from
		med m
	where
		proc_type is null
		or proc_type = '')a;


-- 26) check for null proc_code
select count(*) from med m where proc_code is null or proc_code = '';
-- 0

select
	*,
	case
		when expected_count = actual_count then 'PASS'
		else 'FAIL'
	end as result
from
	(
	select
		'Test' as client,
		'medical_table' as table_name,
		'check for null proc_code' as test_case,
		current_date as batch,
		0 as expected_count,
		count(*) as actual_count
	from
		med m
	where
		proc_code is null
		or proc_code = '')a;


-- 27) check if same proc code has multiple description
select count(*) from (
	select proc_code, count(distinct proc_desc) from med m 
	group by 1
	having count(distinct proc_desc)>1
)a;
--16


select
	*,
	case
		when expected_count = actual_count then 'PASS'
		else 'FAIL'
	end as result
from
	(
	select
		'Test' as client,
		'medical_table' as table_name,
		'check if same proc code has multiple descriptio' as test_case,
		current_date as batch,
		16 as expected_count,
		count(*) as actual_count
	from
		(
		select
			proc_code,
			count(distinct proc_desc)
		from
			med m
		group by
			1
		having
			count(distinct proc_desc)>1
)a
)b;



--28)  check if same description has multiple proc code
select count(*) from (
	select proc_desc, count(distinct proc_code) from med m 
	group by 1
	having count(distinct proc_code)>1
)a;
--5

select
	*,
	case
		when expected_count = actual_count then 'PASS'
		else 'FAIL'
	end as result
from
	(
	select
		'Test' as client,
		'medical_table' as table_name,
		'check if same description has multiple proc code' as test_case,
		current_date as batch,
		5 as expected_count,
		count(*) as actual_count
	from
		(
		select
			proc_desc,
			count(distinct proc_code)
		from
			med m
		group by
			1
		having
			count(distinct proc_code)>1
)a
)b;



-- 29) check for null rev_code
select count(*) from med m where rev_code is null or rev_code = '';
--6,198

select
	*,
	case
		when expected_count = actual_count then 'PASS'
		else 'FAIL'
	end as result
from
	(
	select
		'Test' as client,
		'medical_table' as table_name,
		'check for null rev_code' as test_case,
		current_date as batch,
		6198 as expected_count,
		count(*) as actual_count
	from
		med m
	where
		rev_code is null
		or rev_code = '')a;



-- 30) check for null cpt_code
select count(*) from med m where cpt_code is null or cpt_code ='';
--1,538

select
	*,
	case
		when expected_count = actual_count then 'PASS'
		else 'FAIL'
	end as result
from
	(
	select
		'Test' as client,
		'medical_table' as table_name,
		'check for null cpt_code' as test_case,
		current_date as batch,
		1538 as expected_count,
		count(*) as actual_count
	from
		med m
	where
		cpt_code is null
		or cpt_code = '')a;


-- 31) check for null hcpcs_code
select count(*) from med m where hcpcs_code is null or hcpcs_code = '';
--5,543

select * from med m where hcpcs_code = '' and cpt_code = '' and rev_code = '' and drg_type = '';
--1

select
	*,
	case
		when expected_count = actual_count then 'PASS'
		else 'FAIL'
	end as result
from
	(
	select
		'Test' as client,
		'medical_table' as table_name,
		'check for null hcpcs_code' as test_case,
		current_date as batch,
		5543 as expected_count,
		count(*) as actual_count
	from
		med m
	where
		hcpcs_code is null
		or hcpcs_code = '')a;

	
select
	*,
	case
		when expected_count = actual_count then 'PASS'
		else 'FAIL'
	end as result
from
	(
	select
		'Test' as client,
		'medical_table' as table_name,
		'check for null hcpcs_code' as test_case,
		current_date as batch,
		1 as expected_count,
		count(*) as actual_count
	from
		med m
	where
		hcpcs_code = ''
		and cpt_code = ''
		and rev_code = ''
		and drg_type = '')a;

	
	
	

-- 32) check for hcpcs format : starting with a letter followed by 4 digits.
select count(*) from med m
where hcpcs_code !~  '^[A-Z][0-9][0-9][0-9][0-9]$' and hcpcs_code != '';
-- 0


select
	*,
	case
		when expected_count = actual_count then 'PASS'
		else 'FAIL'
	end as result
from
	(
	select
		'Test' as client,
		'medical_table' as table_name,
		'check for hcpcs format : starting with a letter followed by 4 digits' as test_case,
		current_date as batch,
		0 as expected_count,
		count(*) as actual_count
	from
		med m
	where
		hcpcs_code !~ '^[A-Z][0-9][0-9][0-9][0-9]$'
		and hcpcs_code != '')a;



-- 33) check for cpt format: 5 digit ending with a letter.
select * from med m
where cpt_code !~ '^[0-9][0-9][0-9][0-9][0-9A-Z]$' and cpt_code != '';
-- 0

select
	*,
	case
		when expected_count = actual_count then 'PASS'
		else 'FAIL'
	end as result
from
	(
	select
		'Test' as client,
		'medical_table' as table_name,
		'check for cpt format: 5 digit ending with a letter' as test_case,
		current_date as batch,
		0 as expected_count,
		count(*) as actual_count
	from
		med m
	where
		cpt_code !~ '^[0-9][0-9][0-9][0-9][0-9A-Z]$'
		and cpt_code != '')a;



-- 34) check for revenue code format :: starting with 'R'
select count(*) from med m where rev_code not like 'R%' and rev_code != '';
--0

select
	*,
	case
		when expected_count = actual_count then 'PASS'
		else 'FAIL'
	end as result
from
	(
	select
		'Test' as client,
		'medical_table' as table_name,
		'check for revenue code format :: starting with R' as test_case,
		current_date as batch,
		0 as expected_count,
		count(*) as actual_count
	from
		med m
	where
		rev_code not like 'R%'
		and rev_code != '')a;


-- 35) verify service_from_date > service_to_date
select count(*) from med m where service_from_date::date > service_to_date::date ;
-- 0


select
	*,
	case
		when expected_count = actual_count then 'PASS'
		else 'FAIL'
	end as result
from
	(
	select
		'Test' as client,
		'medical_table' as table_name,
		'verify service_from_date > service_to_date' as test_case,
		current_date as batch,
		0 as expected_count,
		count(*) as actual_count
	from
		med m
	where
		service_from_date::date > service_to_date::date )a;

	
	
--36) verify paid_date < service_to_date
select count(*) from med m where paid_date::date < service_to_date::date
and paid_date::date < service_from_date::date; 

select
	*,
	case
		when expected_count = actual_count then 'PASS'
		else 'FAIL'
	end as result
from
	(
	select
		'Test' as client,
		'medical_table' as table_name,
		'verify paid_date < service_to_date' as test_case,
		current_date as batch,
		0 as expected_count,
		count(*) as actual_count
	from
		med m
	where
		paid_date::date < service_to_date::date
		and paid_date::date < service_from_date::date)a;



-- 37) check for null billed_amount, allowed_amount, copay_amount, coins_amount, paid_amounts
select count(*) from med m 
where billed_amount is null;
--0

select
	*,
	case
		when expected_count = actual_count then 'PASS'
		else 'FAIL'
	end as result
from
	(
	select
		'Test' as client,
		'medical_table' as table_name,
		'check for null billed_amount' as test_case,
		current_date as batch,
		0 as expected_count,
		count(*) as actual_count
	from
		med m
	where
		billed_amount is null)a;


--#
select count(*) from med m 
where allowed_amount is null or allowed_amount = '';
--0

select
	*,
	case
		when expected_count = actual_count then 'PASS'
		else 'FAIL'
	end as result
from
	(
	select
		'Test' as client,
		'medical_table' as table_name,
		'check for null allowed amount' as test_case,
		current_date as batch,
		0 as expected_count,
		count(*) as actual_count
	from
		med m
	where
		allowed_amount is null
		or allowed_amount = '')a;

--#
select count(*) from med m 
where copay_amount is null or copay_amount = '';
--0


select
	*,
	case
		when expected_count = actual_count then 'PASS'
		else 'FAIL'
	end as result
from
	(
	select
		'Test' as client,
		'medical_table' as table_name,
		'check for null copay_amount' as test_case,
		current_date as batch,
		0 as expected_count,
		count(*) as actual_count
	from
		med m
	where
		copay_amount is null
		or copay_amount = '')a;


--#
select count(*) from med m 
where coins_amount is null or coins_amount  = '';
--0



select
	*,
	case
		when expected_count = actual_count then 'PASS'
		else 'FAIL'
	end as result
from
	(
	select
		'Test' as client,
		'medical_table' as table_name,
		'check for null coins_amount' as test_case,
		current_date as batch,
		0 as expected_count,
		count(*) as actual_count
	from
		med m
	where
		coins_amount is null
		or coins_amount = '')a;


--#
select count(*) from med m 
where paid_amount is null;
--0


select
	*,
	case
		when expected_count = actual_count then 'PASS'
		else 'FAIL'
	end as result
from
	(
	select
		'Test' as client,
		'medical_table' as table_name,
		'check for null paid_amount' as test_case,
		current_date as batch,
		0 as expected_count,
		count(*) as actual_count
	from
		med m
	where
		paid_amount is null)a;



-- 38) Verify if paid_amount>allowed_amount
select count(*) from med m where paid_amount - allowed_amount::float > 0.1 and allowed_amount::float > 0;


select
	*,
	case
		when expected_count = actual_count then 'PASS'
		else 'FAIL'
	end as result
from
	(
	select
		'Test' as client,
		'medical_table' as table_name,
		'Verify if paid_amount>allowed_amount' as test_case,
		current_date as batch,
		0 as expected_count,
		count(*) as actual_count
	from
		med m
	where
		paid_amount - allowed_amount::float > 0.1
		and allowed_amount::float > 0)a;



-- check for null pid
select
	*, 
		case
		when expected_count = actual_count then 'PASS'
		else 'FAIL'
	end as result
from
	(
	select
		'Test' as client,
		'medical_claims' as table_name,
		'Check for null pid' as test_case,
		current_date as batch,
		0 as expected_count,
		count(*) as actual_count
	from
		public.med m
	where
		pid is null
)a;
--0





-- check for null mf_name
select
	*, 
		case
		when expected_count = actual_count then 'PASS'
		else 'FAIL'
	end as result
from
	(
	select
		'Test' as client,
		'medical_claims' as table_name,
		'check for null mf_name' as test_case,
		current_date as batch,
		0 as expected_count,
		count(*) as actual_count
	from
		med m
	where
		mf_name is null
		or mf_name = ''
)a;

select
	*, 
		case
		when expected_count = actual_count then 'PASS'
		else 'FAIL'
	end as result
from
	(
	select
		'Test' as client,
		'medical_claims' as table_name,
		'Check for null pid' as test_case,
		current_date as batch,
		0 as expected_count,
		count(*) as actual_count
	from
		(
		select
			diag_code_1,
			count(distinct diag_desc_1)
		from
			med m
		group by
			1
		having
			count(distinct diag_desc_1)>1
		)a
	)b; 



--Data Quality RX Table

-- 1# total record count
select count(*) from rx r; 
--1,824

select
	*, 
		case
		when expected_count = actual_count then 'PASS'
		else 'FAIL'
	end as result
from
	(
	select
		'Test' as client,
		'pharmacy claim' as table_name,
		'total record count' as test_case,
		current_date as batch,
		1824 as expected_count,
		count(*) as actual_count
	from
		rx r)a;


-- 2#  distinct members
select count(distinct pid) from rx r ;
--65

select
	*, 
		case
		when expected_count = actual_count then 'PASS'
		else 'FAIL'
	end as result
from
	(
	select
		'Test' as client,
		'pharmacy claim' as table_name,
		'distinct members' as test_case,
		current_date as batch,
		65 as expected_count,
		count(distinct pid) as actual_count
	from
		rx r)a ;


-- 3# distinct claimid
select count(distinct claim_id) from rx r ; 
--1,824


select
	*, 
		case
		when expected_count = actual_count then 'PASS'
		else 'FAIL'
	end as result
from
	(
	select
		'Test' as client,
		'pharmacy claim' as table_name,
		'distinct claim id' as test_case,
		current_date as batch,
		1824 as expected_count,
		count(distinct claim_id) as actual_count
	from
		rx r )a;



--4# total paid_amount
select sum(paid_amount::real) from rx;
--125,896.06



select
	*, 
		case
		when expected_count = actual_count then 'PASS'
		else 'FAIL'
	end as result
from
	(
	select
		'Test' as client,
		'pharmacy claim' as table_name,
		'total paid_amount' as test_case,
		current_date as batch,
		125896.06 as expected_count,
		sum(paid_amount::real) as actual_count
	from
		rx)a;



-- #5 check for null pid
select count(*) from rx r where pid is null;
--0 

select
	*, 
		case
		when expected_count = actual_count then 'PASS'
		else 'FAIL'
	end as result
from
	(
	select
		'Test' as client,
		'pharmacy claim' as table_name,
		'check for null pid' as test_case,
		current_date as batch,
		0 as expected_count,
		count(*) as actual_count
	from
		rx r
	where
		pid is null)a;


-- 6# check for null mf_name
select count(*) from rx r where mf_name is null or mf_name = '';
--1,824


select
	*, 
		case
		when expected_count = actual_count then 'PASS'
		else 'FAIL'
	end as result
from
	(
	select
		'Test' as client,
		'pharmacy claim' as table_name,
		'check for null mf_name' as test_case,
		current_date as batch,
		1824 as expected_count,
		count(*) as actual_count
	from
		rx r
	where
		mf_name is null
		or mf_name = '')a;
	
	

-- 7# check for null ml_name
select count(*) from rx r where ml_name  is null or ml_name  = '';
--1,824

select
	*, 
		case
		when expected_count = actual_count then 'PASS'
		else 'FAIL'
	end as result
from
	(
	select
		'Test' as client,
		'pharmacy claim' as table_name,
		'check for null ml_name' as test_case,
		current_date as batch,
		1824 as expected_count,
		count(*) as actual_count
	from
		rx r
	where
		ml_name is null
		or ml_name = '')a;

	

-- 8# check for null gender
select count(*) from rx r where gender is null or gender = '';
--0



select
	*, 
		case
		when expected_count = actual_count then 'PASS'
		else 'FAIL'
	end as result
from
	(
	select
		'Test' as client,
		'pharmacy claim' as table_name,
		'check for null gender' as test_case,
		current_date as batch,
		0 as expected_count,
		count(*) as actual_count
	from
		rx r
	where
		gender is null
		or gender = '')a;



--9# check for values of gender
select count(*) from rx r where gender not in ('M', 'F', 'U');
-- 0



select
	*, 
		case
		when expected_count = actual_count then 'PASS'
		else 'FAIL'
	end as result
from
	(
	select
		'Test' as client,
		'pharmacy claim' as table_name,
		'check for values of gender' as test_case,
		current_date as batch,
		0 as expected_count,
		count(*) as actual_count
	from
		rx r
	where
		gender not in ('M', 'F', 'U'))a;
	
	
	

--10# check for null dob
select count(*) from rx r where dob is null or dob ='';
select count(*) from rx r where dob is null;
-- 0

select count(*) from rx r where dob is null or dob ='';

select
	*, 
		case
		when expected_count = actual_count then 'PASS'
		else 'FAIL'
	end as result
from
	(
	select
		'Test' as client,
		'pharmacy claim' as table_name,
		'check for null dob' as test_case,
		current_date as batch,
		0 as expected_count,
		count(*) as actual_count
	from
		rx r
	where
		dob is null)a;

	

-- 11#  check for null claim_id
select count(*) from rx r where claim_id is null or claim_id = '';
-- 0

select
	*, 
		case
		when expected_count = actual_count then 'PASS'
		else 'FAIL'
	end as result
from
	(
	select
		'Test' as client,
		'pharmacy claim' as table_name,
		' check for null claim_id' as test_case,
		current_date as batch,
		0 as expected_count,
		count(*) as actual_count
	from
		rx r
	where
		claim_id is null
		or claim_id = '')a;




-- 12#  check for null provider_npi
select count(*) from rx r where provider_npi is null or provider_npi = '';
-- 0

select
	*, 
		case
		when expected_count = actual_count then 'PASS'
		else 'FAIL'
	end as result
from
	(
	select
		'Test' as client,
		'pharmacy claim' as table_name,
		'check for null provider_npi' as test_case,
		current_date as batch,
		0 as expected_count,
		count(*) as actual_count
	from
		rx r
	where
		provider_npi is null
		or provider_npi = '')a;



-- 13#  check for null prescriber_npi
select count(*) from rx r where prescriber_id  is null or prescriber_id  = '';
-- 0



select
	*, 
		case
		when expected_count = actual_count then 'PASS'
		else 'FAIL'
	end as result
from
	(
	select
		'Test' as client,
		'pharmacy claim' as table_name,
		'check for null prescriber_npi' as test_case,
		current_date as batch,
		0 as expected_count,
		count(*) as actual_count
	from
		rx r
	where
		prescriber_id is null
		or prescriber_id = '')a;



-- 14# check for null pharmacy_id
select count(*) from rx r where pharmacy_id is null or pharmacy_id = '';
-- 0

select
	*, 
		case
		when expected_count = actual_count then 'PASS'
		else 'FAIL'
	end as result
from
	(
	select
		'Test' as client,
		'pharmacy claim' as table_name,
		'check for null pharmacy_id' as test_case,
		current_date as batch,
		0 as expected_count,
		count(*) as actual_count
	from
		rx r
	where
		pharmacy_id is null
		or pharmacy_id = '')a;


-- 15# check for null ndc_code
select count(*) from rx r where ndc_code is null or ndc_code = '';
-- 234



select
	*, 
		case
		when expected_count = actual_count then 'PASS'
		else 'FAIL'
	end as result
from
	(
	select
		'Test' as client,
		'pharmacy claim' as table_name,
		'check for null ndc_code' as test_case,
		current_date as batch,
		234 as expected_count,
		count(*) as actual_count
	from
		rx r
	where
		ndc_code is null
		or ndc_code = '')a;



-- 16# verify ndc_code has length 11
select count(*) from rx r where length(replace(ndc_code, '-', '')) != 11 and ndc_code != '';
-- 0

select
	*, 
		case
		when expected_count = actual_count then 'PASS'
		else 'FAIL'
	end as result
from
	(
	select
		'Test' as client,
		'pharmacy claim' as table_name,
		'verify ndc_code has length 11' as test_case,
		current_date as batch,
		0 as expected_count,
		count(*) as actual_count
	from
		rx r
	where
		length(replace(ndc_code,
		'-',
		'')) != 11
		and ndc_code != '')a;


-- 17# check for null ndc_desc
select count(*) from rx r where ndc_desc is null or ndc_desc = '';
--1,824

select
	*, 
		case
		when expected_count = actual_count then 'PASS'
		else 'FAIL'
	end as result
from
	(
	select
		'Test' as client,
		'pharmacy claim' as table_name,
		'check for null ndc_desc' as test_case,
		current_date as batch,
		1824 as expected_count,
		count(*) as actual_count
	from
		rx r
	where
		ndc_desc is null
		or ndc_desc = '')a;



-- 18# verify ndc_code having multiple description
select count(*) from (
	select ndc_code, count(distinct ndc_desc)from rx 
	group by 1
	having count(distinct ndc_desc)>1
)a;
--0

select
	*, 
		case
		when expected_count = actual_count then 'PASS'
		else 'FAIL'
	end as result
from
	(
	select
		'Test' as client,
		'pharmacy claim' as table_name,
		'verify ndc_code having multiple description' as test_case,
		current_date as batch,
		0 as expected_count,
		count(*) as actual_count
	from
		(
		select
			ndc_code,
			count(distinct ndc_desc)
			from rx
		group by
			1
		having
			count(distinct ndc_desc)>1
)a
)b;


-- verify ndc_desc having multiple codes
-- check for values of drug_type_code
select distinct drug_type_code from rx r; 
--Single Source Brand
--M/S Brand
--Branded Generic
--O.T.C.
--Generic
--5


--#
select
	count(*)
from
	rx r
where
	drug_type_code
not in ('Single Source Brand', 'M/S Brand', 'Branded Generic', 'O.T.C.', 'Generic' );
-- 0

select
	*, 
		case
		when expected_count = actual_count then 'PASS'
		else 'FAIL'
	end as result
from
	(
	select
		'Test' as client,
		'pharmacy claim' as table_name,
		'verify ndc_code having multiple description' as test_case,
		current_date as batch,
		5 as expected_count,
		count (distinct drug_type_code )as actual_count
	from
		rx r)a; 


--#
select
	*, 
		case
		when expected_count = actual_count then 'PASS'
		else 'FAIL'
	end as result
from
	(
	select
		'Test' as client,
		'pharmacy claim' as table_name,
		'verify ndc_code having multiple description' as test_case,
		current_date as batch,
		0 as expected_count,
		count(*) as actual_count
	from
		rx r
	where
		drug_type_code
not in ('Single Source Brand', 'M/S Brand', 'Branded Generic', 'O.T.C.', 'Generic' ))a;




-- 19#  verify metric_qty
select count(*) from (
	select pid, sum(metric_qty::float) from rx r 
	group by 1
	having sum(metric_qty::float)<0
)a;
--0



select
	*, 
		case
		when expected_count = actual_count then 'PASS'
		else 'FAIL'
	end as result
from
	(
	select
		'Test' as client,
		'pharmacy claim' as table_name,
		'verify metric_qty' as test_case,
		current_date as batch,
		0 as expected_count,
		count(*) as actual_count
	from
		(
		select
			pid,
			sum(metric_qty::float)
		from
			rx r
		group by
			1
		having
			sum(metric_qty::float)<0
)a
)b;



--21# verify days_supply
select count(*) from (
	select pid, sum(days_supply::float) from rx r 
	group by 1
	having sum(days_supply::float)<0
)a;
-- 0



select
	*, 
		case
		when expected_count = actual_count then 'PASS'
		else 'FAIL'
	end as result
from
	(
	select
		'Test' as client,
		'pharmacy claim' as table_name,
		'verify days_supply' as test_case,
		current_date as batch,
		0 as expected_count,
		count(*) as actual_count
	from
		(
		select
			pid,
			sum(days_supply::float)
		from
			rx r
		group by
			1
		having
			sum(days_supply::float)<0
)a
)b;



-- 22# check for vaues of specialty_flag
select count(*) from rx r where specialty_flag not in ('Y', 'N');
-- 0


select
	*, 
		case
		when expected_count = actual_count then 'PASS'
		else 'FAIL'
	end as result
from
	(
	select
		'Test' as client,
		'pharmacy claim' as table_name,
		'check for vaues of specialty_flag' as test_case,
		current_date as batch,
		0 as expected_count,
		count(*) as actual_count
	from
		rx r
	where
		specialty_flag not in ('Y', 'N'))a;



-- 23#  check for values of formulary_flag
select count(*) from rx r where formulary_flag  not in ('Y', 'N');
-- 0



select
	*, 
		case
		when expected_count = actual_count then 'PASS'
		else 'FAIL'
	end as result
from
	(
	select
		'Test' as client,
		'pharmacy claim' as table_name,
		'check for values of formulary_flag' as test_case,
		current_date as batch,
		0 as expected_count,
		count(*) as actual_count
	from
		rx r
	where
		formulary_flag not in ('Y', 'N'))a;



-- 24#  check for values of generic_flag
select count(*) from rx r where specialty_flag  not in ('Y', 'N');
-- 0



select
	*, 
		case
		when expected_count = actual_count then 'PASS'
		else 'FAIL'
	end as result
from
	(
	select
		'Test' as client,
		'pharmacy claim' as table_name,
		'check for values of generic_flag' as test_case,
		current_date as batch,
		0 as expected_count,
		count(*) as actual_count
	from
		rx r
	where
		specialty_flag not in ('Y', 'N'))a;



--25#  verify prescription_written_date <= filled_date
select count(*) from rx r where prescription_written_date > filled_date;
-- 0



select
	*, 
		case
		when expected_count = actual_count then 'PASS'
		else 'FAIL'
	end as result
from
	(
	select
		'Test' as client,
		'pharmacy claim' as table_name,
		'verify prescription_written_date <= filled_date' as test_case,
		current_date as batch,
		0 as expected_count,
		count(*) as actual_count
	from
		rx r
	where
		prescription_written_date > filled_date)a;


-- 26# verify filled_date <= paid_date
select * from rx r where paid_date < filled_date ;
-- 0

select
	*, 
		case
		when expected_count = actual_count then 'PASS'
		else 'FAIL'
	end as result
from
	(
	select
		'Test' as client,
		'pharmacy claim' as table_name,
		'verify filled_date <= paid_date' as test_case,
		current_date as batch,
		0 as expected_count,
		count(*) as actual_count
	from
		rx r
	where
		paid_date < filled_date )a;


-- 27# check for null ingredient_cost
select count(*) from rx r where ingrediant_cost is null or ingrediant_cost = '';
-- 0

select
	*, 
		case
		when expected_count = actual_count then 'PASS'
		else 'FAIL'
	end as result
from
	(
	select
		'Test' as client,
		'pharmacy claim' as table_name,
		'check for null ingredient_cost' as test_case,
		current_date as batch,
		0 as expected_count,
		count(*) as actual_count
	from
		rx r
	where
		ingrediant_cost is null
		or ingrediant_cost = '')a;
	
	

-- 28# check for null billed_amount, allowed_amount, copay_amount, coins_amount, paid_amounts
select count(*) from rx r  
where billed_amount is null;
--0


select
	*, 
		case
		when expected_count = actual_count then 'PASS'
		else 'FAIL'
	end as result
from
	(
	select
		'Test' as client,
		'pharmacy claim' as table_name,
		'check for null billed_amount' as test_case,
		current_date as batch,
		0 as expected_count,
		count(*) as actual_count
	from
		rx r
	where
		billed_amount is null)a;


--#
select count(*) from rx 
where allowed_amount is null or allowed_amount = '';
--0

select
	*, 
		case
		when expected_count = actual_count then 'PASS'
		else 'FAIL'
	end as result
from
	(
	select
		'Test' as client,
		'pharmacy claim' as table_name,
		'check for null allowed_amount' as test_case,
		current_date as batch,
		0 as expected_count,
		count(*) as actual_count
	from
		rx
	where
		allowed_amount is null
		or allowed_amount = '')a;





--#
select count(*) from rx r  
where copay_amount is null or copay_amount = '';
--0

select
	*, 
		case
		when expected_count = actual_count then 'PASS'
		else 'FAIL'
	end as result
from
	(
	select
		'Test' as client,
		'pharmacy claim' as table_name,
		'check for null copay_amount' as test_case,
		current_date as batch,
		0 as expected_count,
		count(*) as actual_count
	from
		rx r
	where
		copay_amount is null
		or copay_amount = '')a;



--#
select count(*) from rx r  
where coins_amount is null or coins_amount  = '';
--0



select
	*, 
		case
		when expected_count = actual_count then 'PASS'
		else 'FAIL'
	end as result
from
	(
	select
		'Test' as client,
		'pharmacy claim' as table_name,
		'check for null coins_amount' as test_case,
		current_date as batch,
		0 as expected_count,
		count(*) as actual_count
	from
		rx r
	where
		coins_amount is null
		or coins_amount = '')a;


--#
select count(*) from rx r  
where paid_amount is null;
--0


select
	*, 
		case
		when expected_count = actual_count then 'PASS'
		else 'FAIL'
	end as result
from
	(
	select
		'Test' as client,
		'pharmacy claim' as table_name,
		'check for null  paid_amount' as test_case,
		current_date as batch,
		0 as expected_count,
		count(*) as actual_count
	from
		rx r
	where
		paid_amount is null)a;

	

-- 29# Verify if paid_amount>allowed_amount
select count(*) from rx r  where paid_amount::float > allowed_amount::float and allowed_amount::float > 0;
--543

select
	*, 
		case
		when expected_count = actual_count then 'PASS'
		else 'FAIL'
	end as result
from
	(
	select
		'Test' as client,
		'pharmacy claim' as table_name,
		'Verify if paid_amount>allowed_amount' as test_case,
		current_date as batch,
		543 as expected_count,
		count(*) as actual_count
	from
		rx r
	where
		paid_amount::float > allowed_amount::float
		and allowed_amount::float > 0)a;



--Store Procedure
	
create table public.qc_reports(
	client_name varchar,
	table_name varchar,
	test_case varchar,
	batch date,
	expected_count int,
	actual_count int,
	result varchar
	);

select * from qc_reports qr ;
	








































