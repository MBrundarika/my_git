create or replace store procedure incremental_load sucess()
return string
language java script
as
$$
try{
var merge_cmd='
';
 snowflake.excute({ sqlText: merge_cmd});
 return 'incremenyal load sucess';
}
catch(error){
snowflake.excute({
sqltext:
insert into myoeb_db(step name,error_message)
values('merge_incremental',?)
',
binds:[err.message]
});
