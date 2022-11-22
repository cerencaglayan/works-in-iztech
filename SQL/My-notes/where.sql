--SELECT		[DISTINCT] {*| column [alias], ...}
--FROM 		table
--[WHERE		condition(s)];

-- Selecting limited rows by contidions : 

--Where

--1 : character values are case-sensitive.
--  - fot string => single quote ' '

--select ename , deptno
--from emp
--where ename = 'JAMES';

-- .... where sal<= comm;

--2 : Other Comparison Operators
-- select ename, sal
-- from emp

--- where sal  between 1000 and 1500;
--- where sal in (800,1000); 800 ve 1000 olanlar.
-- LIKE operator performs wildcard searches of valid search string values, also case sensitive.
--   % => zero or many characters, _ => one character , you can also combine
--- where ename like '%A_S';
--    %a => a ile başlayan
--    a% => a ile biten
--    %a% => biyerlerde a var
--    _a% => a 2.
--    a%p = a ile başlayıp p ile biten

--- where mgr IS NULL;
