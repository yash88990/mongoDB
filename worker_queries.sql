-- 1. Print all Worker details ordered by FIRST_NAME Ascending
SELECT * FROM Worker ORDER BY FIRST_NAME ASC;

-- 2. Print all Worker details ordered by FIRST_NAME Ascending and DEPARTMENT Descending
SELECT * FROM Worker ORDER BY FIRST_NAME ASC, DEPARTMENT DESC;

-- 3. Print details of workers excluding first names 'Vipul' and 'Satish'
SELECT * FROM Worker WHERE FIRST_NAME NOT IN ('Vipul', 'Satish');

-- 4. Print details of Workers whose FIRST_NAME ends with 'h' and contains six alphabets
SELECT * FROM Worker WHERE FIRST_NAME LIKE '_____h';

-- 5. Fetch the count of employees working in the 'Admin' department
SELECT COUNT(*) AS EmployeeCount FROM Worker WHERE DEPARTMENT = 'Admin';

-- 6. Fetch worker names with salaries between 50,000 and 100,000
SELECT FIRST_NAME, LAST_NAME FROM Worker WHERE SALARY BETWEEN 50000 AND 100000;

-- 7. Fetch the number of workers for each department in descending order
SELECT DEPARTMENT, COUNT(*) AS WorkerCount FROM Worker GROUP BY DEPARTMENT ORDER BY WorkerCount DESC;

-- 8. Determine the 5th highest salary without using TOP or LIMIT
SELECT DISTINCT SALARY FROM Worker ORDER BY SALARY DESC OFFSET 4 ROWS FETCH NEXT 1 ROWS ONLY;

-- 9. Fetch the list of employees with the same salary
SELECT SALARY, STRING_AGG(FIRST_NAME, ', ') AS Employees FROM Worker GROUP BY SALARY HAVING COUNT(*) > 1;

-- 10. Fetch the departments that have less than three people in it
SELECT DEPARTMENT FROM Worker GROUP BY DEPARTMENT HAVING COUNT(*) < 3;
