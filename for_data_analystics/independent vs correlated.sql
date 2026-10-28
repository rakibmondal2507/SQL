
-- independent vs correlated sub quaries 
-- why do we need sub quaries
-- independent sub quaries
-- correlated sub quaries


-- write a sql querry to print employee details who's salary is more than their department average salary

select e.*, d.average_dept_salary from emp as e
INNER JOIN (
select department_id, AVG(salary) as average_dept_salary
from emp
group by department_id) d on e.department_id = d.department_id
