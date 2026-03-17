create or replace package body pkg_emp as

  gc_scope_prefix constant varchar2(31) := lower($$plsql_unit) || '.';


  /**
   * Description
   *
   *
   * @example
   *
   * @issue TODO
   *
   * @author TODO 
   * @created TODO 
   * @param TODO
   * @return
   */
  procedure P_pkg_emp(
    p_param1_todo in varchar2)
  as
    l_scope varchar2(200) := gc_scope_prefix || 'P_pkg_emp';

  begin
    dbms_output.put_line('START ' || l_scope || ' p_param1_todo=' || p_param1_todo);

   
    -- All calls to logger should pass in the scope
 

    dbms_output.put_line('END ' || l_scope);
  exception
    when others then
      dbms_output.put_line('Unhandled Exception in ' || l_scope || ': ' || sqlerrm);
      raise;
  end P_pkg_emp;


end pkg_emp;
/
