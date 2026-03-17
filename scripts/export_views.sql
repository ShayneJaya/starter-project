set pagesize 0
set long 1000000
set longchunksize 32767
set linesize 32767
set trimspool on
set heading off
set feedback off
set verify off
set echo off
whenever sqlerror exit sql.sqlcode

exec dbms_metadata.set_transform_param(dbms_metadata.session_transform, 'PRETTY', true);
exec dbms_metadata.set_transform_param(dbms_metadata.session_transform, 'SQLTERMINATOR', true);

spool &1

select output
from (
  select view_name, 1 as ord, to_clob('--FILE_START:' || view_name) as output
    from user_views
  union all
  select view_name, 2 as ord, to_clob(dbms_metadata.get_ddl('VIEW', view_name, user)) as output
    from user_views
  union all
  select view_name, 3 as ord, to_clob('--FILE_END:' || view_name) as output
    from user_views
)
order by view_name, ord;

spool off
exit
