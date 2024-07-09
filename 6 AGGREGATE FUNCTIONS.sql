USE HR_EMP;

-- -------------------------------------
-- AGGREGATE FUNCTIONS
-- -------------------------------------

-- MIN
-- MAX
-- SUM
-- AVG
-- COUNT

SELECT MIN(SALARY) FROM EMPLOYEES;
SELECT MAX(SALARY) FROM EMPLOYEES;
SELECT SUM(SALARY) FROM EMPLOYEES;
SELECT AVG(SALARY) FROM EMPLOYEES;
SELECT COUNT(SALARY) FROM EMPLOYEES;
SELECT COUNT(*) FROM EMPLOYEES; 
SELECT COUNT(COMMISSION_PCT) FROM EMPLOYEES; -- COUNTS NOT NULL COMMISSION_PCT

SELECT * FROM EMPLOYEES;

SELECT AVG(SALARY) FROM EMPLOYEES
WHERE DEPARTMENT_ID = 70;

SELECT MIN(SALARY) FROM EMPLOYEES
WHERE DEPARTMENT_ID = 70;

-- AGGREGATE WITH GROUP BY  CLAUSE
SELECT AVG(SALARY) FROM EMPLOYEES;
 
SELECT * FROM EMPLOYEES;

SELECT DEPARTMENT_ID, AVG(SALARY) 
FROM EMPLOYEES
GROUP BY DEPARTMENT_ID;

-- AGGREGATE WITH WHERE AND GROUP BY CLAUSE 
SELECT DEPARTMENT_ID, AVG(SALARY) 
FROM EMPLOYEES
WHERE DEPARTMENT_ID IS NOT NULL
GROUP BY DEPARTMENT_ID;

SELECT DEPARTMENT_ID, AVG(SALARY) 
FROM EMPLOYEES
GROUP BY DEPARTMENT_ID
HAVING DEPARTMENT_ID IS NOT NULL;

-- SELECT EMPLOYEE_ID, DEPARTMENT_ID, AVG(SALARY) FROM EMPLOYEES; 
-- ERROR AS NONAGG COLUMNS ARE COOSEN ALONG WITH AGG COLUMN

SELECT * FROM EMPLOYEES;

SELECT DEPARTMENT_ID, JOB_ID, AVG(SALARY) 
FROM EMPLOYEES
WHERE DEPARTMENT_ID IS NOT NULL
GROUP BY DEPARTMENT_ID, JOB_ID;

SELECT DEPARTMENT_ID, EMPLOYEE_ID, AVG(SALARY) 
FROM EMPLOYEES
WHERE DEPARTMENT_ID IS NOT NULL
GROUP BY DEPARTMENT_ID, EMPLOYEE_ID
HAVING EMPLOYEE_ID < 5;

SELECT DEPARTMENT_ID, MIN(SALARY) 
FROM EMPLOYEES
GROUP BY DEPARTMENT_ID;

-- AGGREGATE WITH HAVING CLAUSE 
SELECT DEPARTMENT_ID, MIN(SALARY) 
FROM EMPLOYEES
GROUP BY DEPARTMENT_ID
HAVING MIN(SALARY)>=7000;


SELECT DEPARTMENT_ID, AVG(SALARY) AS AVGSAL
FROM EMPLOYEES
WHERE DEPARTMENT_ID IS NOT NULL
GROUP BY DEPARTMENT_ID
HAVING AVGSAL >10000;

-- NOTE THE SEQUENCE:
-- SELECT FROM WHERE GROUP BY HAVING ORDER BY