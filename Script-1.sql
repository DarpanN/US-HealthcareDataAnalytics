
--Store Procedure
	
create table public.qc_report(
	client_name varchar,
	table_name varchar,
	test_case varchar,
	batch date,
	expected_count int,
	actual_count int,
	result varchar
	);

select * from qc_report qr ;

DROP TABLE public.qc_report;


delete from public.qc_report ;


insert into qc_report 
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


create or replace procedure public.med_qc_report(
	schema_name varchar	
)
LANGUAGE plpgsql
AS $$
begin
	execute format ('create table if not exists '||schema_name||'.qc_report(
                        client_name varchar,
						table_name varchar,
						test_case varchar,
						batch date,
						expected_count int,
						actual_count int,
						result varchar
					)', schema_name);
				
	execute format('insert into  '||schema_name||'.qc_report 
					select
						*,
						case
							when expected_count = actual_count then ''PASS''
							else ''FAIL''
						end as result
					from
						(
						select
                            ''Test'' as client_name,
							''medical_table'' as table_name,
							''check for null pid'' as test_case,
							current_date as batch,
							0 as expected_count,
							count(*) as actual_count
						from
							'||schema_name||'.med m
						where
							pid is null)a', schema_name);
						
	execute format('insert into '||schema_name||'.qc_report 	
					select
						*,
						case
							when expected_count = actual_count then ''PASS''
							else ''FAIL''
						end as result
					from
						(
						select
                            ''Test'' as client_name,
							''medical_table'' as table_name,
							''check for null mf_name'' as test_case,
							current_date as batch,
							0 as expected_count,
							count(*) as actual_count
						from
							'||schema_name||'.med m
						where
							mf_name is null
							or mf_name = '''')a;');
						
	execute format ('insert into '||schema_name||'.qc_report 	
					select
						*,
						case
							when expected_count = actual_count then ''PASS''
							else ''FAIL''
						end as result
					from
						(
						select
                            ''Test'' as client_name,
							''medical_table'' as table_name,
							''check for null ml_name'' as test_case,
							current_date as batch, 
							0 as expected_count,
							count(*) as actual_count
						from
							'||schema_name||'.med m
						where
							ml_name is null
							or ml_name = '''')a');	
	
	execute format('insert into '||schema_name||'.qc_report 	
					select
						*,
						case
							when expected_count = actual_count then ''PASS''
							else ''FAIL''
						end as result
					from
						(
						select
                            ''Test'' as client_name,
							''medical_table'' as table_name,
							''check for null gender'' as test_case,
							current_date as batch,
							0 as expected_count,
							count(*) as actual_count
						from
							'||schema_name||'.med m
						where
							gender is null
							or gender = '''')a');					
end; 
$$;
call public.med_qc_report( 'public');

