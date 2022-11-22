-- Logical Operators
-- where ...
-- AND ... (OR .. ) (NOT ...)

-- SELECT empno,ename,job from emp where sal >= 1100 and job='CLERK' and not ename = 'ADAMS';

-- ORDER BY : sorting rows / ascending in default (for desc. => ORDER BY ... DESC )
-- https://www.w3schools.com/sql/sql_orderby.asp

--SELECT  	 ename, job, deptno, hiredate FROM  emp ORDER BY hiredate;

--Ex 3:
--select ename as "Name" , sal as "Monthly Salary"  -- as kullanırken "" olur.
--from emp
--where sal > 100
--and deptno in (10,20);

--Ex 4:
--select ename , deptno
--from emp
--where job in ('PRESIDENT','MANAGER')
--Order by ename;

--Ex 5:
select ename,job,sal
from emp
where sal
not in (1000,3000,5000);
