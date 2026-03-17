
  CREATE OR REPLACE FORCE EDITIONABLE VIEW "DEV_USER"."DEMO_EMP_DEPT" ("EMPLOYEE_NUMBER", "EMPLOYEE_NAME", "EMPLOYEE_JOB_ROLE", "EMPLOYEES_MANAGER_NUMBER", "EMPLOYEE_HIRE_DATE", "EMPLOYEE_SALARY", "EMPLOYEE_COMMISION", "DEPARTMENT_NUMBER", "DEPARTMENT_NAME", "DEPARTMENT_LOCATION", "NUMBER_OF_EMPLOYEE_IN_DEPARTMENT", "TOTAL_SALARY_OF_DEPARTMENT", "MAX_SALARY_IN_DEPARTMENT", "MINIMUM_HIRE_DATE_IN_DEPARTMENT", "MAX_HIRE_DATE_IN_DEPARTMENT", "NAME_OF_DEPARTMENT_MANAGERS", "NUMBER_OF_DEPARTMENT_MANAGERS", "TOTAL_COMMISION_OF_DEPARTMENT", "AVERAGE_TENURE_OF_DEPARTMENT_EMPLOYEES", "TOP_JOB_TITLES_FOR_DEPARTMENT", "DEPARTMENT_HAVE_OPEN_POSITIONS") DEFAULT COLLATION "USING_NLS_COMP"  AS
  select emp.empno as Employee_Number,
           emp.ename as Employee_Name,
           emp.job as Employee_Job_Role,
           emp.mgr as Employees_Manager_Number,
           emp.hiredate as Employee_Hire_Date,
           emp.sal as Employee_Salary,
           emp.comm as Employee_Commision,
           emp.deptno as Department_Number,
           dept.dname as Department_Name,
           dept.loc as Department_Location,
           DEPT_INFO.NUM_EMPLOYEES   as Number_of_Employee_in_Department,
          DEPT_INFO.TOTAL_SAL       as Total_Salary_of_Department,
          DEPT_INFO.MAX_SAL         as Max_Salary_in_Department,
          DEPT_INFO.MIN_HIREDATE    as Minimum_Hire_Date_in_Department,
          DEPT_INFO.MAX_HIREDATE    as Max_Hire_Date_in_Department,
          DEPT_INFO.MANAGER_NAMES as Name_of_Department_Managers,
          DEPT_INFO.NUM_MANAGERS as Number_of_Department_Managers,
            DEPT_INFO.TOTAL_COMM as Total_Commision_of_Department,
            DEPT_INFO.AVG_TENURE_YEARS as Average_Tenure_of_Department_Employees,
            DEPT_INFO.TOP_JOB_TITLES as Top_Job_Titles_for_Department,
            DEPT_INFO.HAS_OPEN_POSITIONS  as Department_have_open_positions
      from emp
      JOIN dept ON emp.deptno = dept.deptno
      JOIN DEPT_INFO on emp.deptno = DEPT_INFO.deptno
     WHERE emp.deptno = NVL((
             SELECT e.deptno
               FROM emp e
              WHERE e.ename = get_current_apex_user()
           ),emp.deptno);

