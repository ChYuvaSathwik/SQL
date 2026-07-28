Running (Cumulative) Window Functions
Employee Table
ID	Name	Department	Salary
1	John	IT	50000
2	Sam	IT	60000
3	Mike	IT	70000
4	Alice	HR	40000
5	Bob	HR	45000
6	David	Sales	80000
7	Emma	Sales	90000
8	Kevin	Finance	75000
9	Sophia	Finance	85000
1. Display every employee along with the running total salary within their department in ascending salary order.
Query
SELECT *,
       SUM(Salary) OVER(
           PARTITION BY Department
           ORDER BY Salary ASC
       ) AS running_total_salary
FROM Employee;
2. Display every employee along with the running total salary within their department in descending salary order.
Query
SELECT *,
       SUM(Salary) OVER(
           PARTITION BY Department
           ORDER BY Salary DESC
       ) AS running_total_salary
FROM Employee;
3. Display every employee along with the running average salary within their department in ascending salary order.
Query
SELECT *,
       AVG(Salary) OVER(
           PARTITION BY Department
           ORDER BY Salary ASC
       ) AS running_average_salary
FROM Employee;
4. Display every employee along with the running count of employees within their department based on salary order.
Query
SELECT *,
       COUNT(*) OVER(
           PARTITION BY Department
           ORDER BY Salary ASC
       ) AS running_employee_count
FROM Employee;
5. Display every employee along with the highest salary seen so far within their department.
Query
SELECT *,
       MAX(Salary) OVER(
           PARTITION BY Department
           ORDER BY Salary ASC
       ) AS running_max_salary
FROM Employee;
6. Display every employee along with the lowest salary seen so far within their department.
Query
SELECT *,
       MIN(Salary) OVER(
           PARTITION BY Department
           ORDER BY Salary ASC
       ) AS running_min_salary
FROM Employee;
