-- Question 1
select employees.empl_no, employees.last_name, employees.first_name, employees.sex, salaries.salary
from salaries
inner join employees ON employees.empl_no=salaries.emp_no;

-- Question 2
select first_name, last_name, hire_date
from employees
where EXTRACT(YEAR FROM hire_date) = 1986;

-- Question 3
select dept_manager.dept_no, dept_manager.emp_no, departments.dept_name, employees.last_name, employees.first_name
from dept_manager
inner join departments on dept_manager.dept_no=departments.dept_no 
inner join employees on dept_manager.emp_no=employees.empl_no

-- Question 4
select employees.empl_no, employees.last_name, employees.first_name, departments.dept_name
from employees
inner join dept_employees on employees.empl_no=dept_employees.emp_no
inner join departments on dept_employees.dept_no=departments.dept_no;

-- Question 5 
select first_name, last_name, sex
from employees
where first_name = 'Hercules' and last_name like 'B%';

-- Question 6
select employees.empl_no, employees.last_name, employees.first_name, departments.dept_name
from employees
inner join dept_employees on employees.empl_no=dept_employees.emp_no
inner join departments on dept_employees.dept_no=departments.dept_no
where departments.dept_name = 'Sales';

--Question 7
select employees.empl_no, employees.last_name, employees.first_name, departments.dept_name
from employees
inner join dept_employees on employees.empl_no=dept_employees.emp_no
inner join departments on dept_employees.dept_no=departments.dept_no
where departments.dept_name = 'Sales' or departments.dept_name = 'Development';

-- Question 8
select last_name, count(last_name)
from employees
group by last_name
order by count(last_name) desc;
