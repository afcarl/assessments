CREATE TABLE employees.titles (
  title_id int
, title varchar(20)
);

CREATE TABLE employees.emp_status (
  status_id int auto_increment primary key
, status varchar(25)
);

CREATE TABLE employees.employees (
  employee_id int auto_increment primary key
, name varchar(20)
, title_id int
, status_id int
);

CREATE TABLE employees.parking (
  employee_id int
, slot varchar(64)
);

CREATE TABLE employees.report_structure (
  report_id int auto_increment primary key
, employee_id int
, mgr_employee_id int
);

CREATE TABLE employees.emp_salaries (
   salary_id int auto_increment primary key
 , employee_id int
 , salary float
);
