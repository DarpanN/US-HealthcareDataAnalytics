--Generate Reports for all table

create or replace procedure public.generate_qc_report(
	schema_name varchar	
)
LANGUAGE plpgsql
AS $$
begin
	call ||schema_name||.elig_qc_report( '||schema_name||');
    call public.med_qc_report( '||schema_name||');
    call public.rx_qc_report( '||schema_name||');
end;
$$;

