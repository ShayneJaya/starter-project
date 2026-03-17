
  CREATE OR REPLACE FORCE EDITIONABLE VIEW "DEV_USER"."EMP_DEPT_V" ("EMPNO", "ENAME", "JOB", "MGR", "HIREDATE", "SAL", "COMM", "DEPTNO", "DNAME", "LOC") DEFAULT COLLATION "USING_NLS_COMP"  AS
  select e.empno,
       e.ename,
       e.job,
       (select m.ename
          from eba_demo_dg_emp m
         where e.mgr = m.empno) mgr,
       e.hiredate,
       e.sal,
       e.comm,
       d.deptno,
       d.dname,
       d.loc
from eba_demo_dg_emp e,
     eba_demo_dg_dept d
where e.deptno = d.deptno (+);

