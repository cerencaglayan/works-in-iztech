-- Data Manipulation -- 
-- Insert
/*
(this syntax allows only one row inserting.)
INSERT INTO	table [(column [, column...])]
VALUES		(value [, value...]);

for dates : sysdate , to_date ('mon dd' , 'y')
*/

INSERT INTO	emp (empno, ename, job,
  			mgr, hiredate, sal, comm,
  			deptno)
VALUES	(7196, 'GREEN', 'SALESMAN',
  			7782, SYSDATE, 2000, NULL,
  			10);

--You can use the INSERT statement to add rows to a table where the values are derived from existing tables. In place of the VALUES clause, you use a subquery. 
/*
INSERT INTO managers(id, name, salary, hiredate)
            		SELECT	empno, ename, sal, hiredate
            		FROM   emp
            		WHERE	job = 'MANAGER';

*/

-- Changing data in the table

/*
UPDATE		table
SET		column = value [, column = value, ...]
[WHERE 		condition];
*/

Update emp
set deptno=10
where job='SALESMAN';


--Deleting data in the table 

/*
DELETE [FROM]	  table
[WHERE	  condition];

*/

Rollback;

