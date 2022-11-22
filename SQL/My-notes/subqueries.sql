-- Subqueries -- 
--Ex8 :

select ename, sal
from emp
where job=
     (
        select job 
        from emp
        where ename like 'JONES'
    )
and hiredate > 
            (select hiredate
                from emp
                where ename like 'JONES');


-- <any : less than the maximum
-- >any  : more than minimum


--ex9 :Display the employee number and name for all employees who earn more than the average salary.
-- select empno,ename from emp where sal > (     select Avg(sal)     from emp )

--ex10 : Display minimum salaries for each departments. Sort the results by department numbers.
select min(sal) , deptno 
from emp , dept

group by deptno,
order by deptno;

