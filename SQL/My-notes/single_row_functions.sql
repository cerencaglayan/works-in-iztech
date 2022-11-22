-- Single Row Functions --
--1 Case Conversion : 
-- ex: Upper()
--2 Character Manipulation
-- ex: concat() length()
--3  "" with Dates
-- (SYSDATE-..)

--? for more : https://docs.oracle.com/database/121/SQLRF/functions002.htm#SQLRF51182

-- Displaying Data from Multiple Tables --
-- retrieving records with equijoins

--select emp.ename, emp.ename, emp.deptno,
--        dept.deptno, dept.loc
--from emp, dept -- you can define here like emp e, dept d
--where emp.deptno=dept.deptno;

-- for more than 2 tables: more foreign keys.
-- non equijonin ex : SELECT 	e.ename, e.sal, s.grade FROM	emp e, salgrade s	WHERE 	e.sal	BETWEEN 	s.losal AND s.hisal;

-- outer joins : when a row don't satisfy join condition  :
-- for adding join operator :  WHERE	e.deptno(+) = d.deptno

--ex6:
--select e.ename , d.dname
--from emp e, dept d
--where e.ename like '%K%'
--and e.deptno = d.deptno ;

--ex7:
select e.ename , e.job, e.sal,d.dname,s.grade
from emp e, dept d , salgrade s
where
e.deptno = d.deptno 
and e.sal between s.losal and s.hisal;