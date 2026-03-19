create table departments(
    department_id serial primary key ,
    department_name varchar(100) not null
);

create table employees(
    emp_id serial primary key ,
    name varchar(50) not null ,
    dob date not null ,
    department_id int not null references departments(department_id)
);

create table projects(
    project_id serial primary key ,
    project_name varchar(50) not null ,
    start_date date default current_date,
    end_date date check(end_date>=start_date)
);

create table EmployeeProjects(
    emp_id int not null references employees(emp_id),
    project_id int not null references projects(project_id),
    primary key (emp_id,project_id)
);
