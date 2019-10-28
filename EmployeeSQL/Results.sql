--Question 1
select employees.emp_no, employees.last_name, employees.first_name, employees.gender, salaries.salary
from employees 
left join salaries
on employees.emp_no = salaries.emp_no;

--Question 2
select * from employees where hire_date between '1986-01-01' and '1986-12-31';

--Question 3
select departments.dept_no, departments.dept_name, dept_manager.emp_no, employees.last_name, employees.first_name, dept_manager.from_date, dept_manager.to_date
from departments
left join dept_manager
on departments.dept_no = dept_manager.dept_no
left join employees
on dept_manager.emp_no = employees.emp_no;

--Question 4
select employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
from employees
left join dept_emp
on employees.emp_no = dept_emp.emp_no
left join departments
on dept_emp.dept_no = departments.dept_no;

--Question 5
select * from employees where first_name = 'Hercules' and last_name like 'B%';

--Question 6
select employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
from employees 
left join dept_emp 
on employees.emp_no = dept_emp.emp_no
left join departments
on dept_emp.dept_no = departments.dept_no
where dept_name = 'Sales';

--Question 7
select employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
from employees 
left join dept_emp 
on employees.emp_no = dept_emp.emp_no
left join departments
on dept_emp.dept_no = departments.dept_no
where dept_name in ('Sales','Development');

--Question 8
select last_name, count(last_name) as frequency from employees
group by last_name
order by frequency desc;


