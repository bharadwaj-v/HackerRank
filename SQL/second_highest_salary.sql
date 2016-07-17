/*
Second Highest Salary

Write a SQL query to get the second highest salary from the Employee table.

+----+--------+
| Id | Salary |
+----+--------+
| 1  | 100    |
| 2  | 200    |
| 3  | 300    |
+----+--------+
For example, given the above Employee table, the second highest salary is 200. If there is no second highest salary, then the query should return null.
*/
/*Write your MySQL query statement below
Select Emp1.Salary from Employee Emp1
where 1=(select count(distinct (Emp2.Salary)) from Employee Emp2 where Emp2.Salary>Emp1.Salary);
*/

select max(Salary) from Employee where Salary<(select max(salary) from Employee);

