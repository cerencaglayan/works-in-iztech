-- Group functions:
--AVG 
--COUNT 
--MAX
--MIN 
--STDDEV 
--SUM
--VARIANCE
--COUNT(*) =returns the number of rows in a table including duplicate rows and rows containing null values in any of the columns.
-- Count(..something) = returns non-null

--ex8:select count(e.deptno) from emp e;

--ex9:select count( distinct deptno) from emp;

-- Creating groups of data --
-- Group by

-- Having
select job, sum(sal) payroll
from emp
where job not like 'SALES%'
group by job
having sum(sal)>5000
order by sum(sal);

