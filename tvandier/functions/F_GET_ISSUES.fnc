CREATE OR REPLACE FUNCTION TVANDIER.f_get_issues(p_project_id varchar2 default null) return t_issue_table as
    v_ret t_issue_table;
begin
  v_ret := t_issue_table();
  
  v_ret.extend();
  v_ret(v_ret.count) := t_issue('MARS_1','This is an error when looking up a client in the DB','MARS');
  
  v_ret.extend();
  v_ret(v_ret.count) := t_issue('MARS_2','This is all going so very slow','MARS');
  
  return v_ret;
end;
/