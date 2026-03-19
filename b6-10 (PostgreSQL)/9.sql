create table Students(
    student_id serial primary key ,
    name varchar(50) not null ,
    dob date not null
);

create table courses (
    course_id serial primary key ,
    course_name varchar(50) not null unique ,
    credits int not null check(credits>=0)
);

create table enrollments(
    enrollment_id serial primary key ,
    student_id int not null references Students(student_id),
    course_id int not null  references courses(course_id),
    grade char(1) check (grade in ('A','B','C','D','F'))
);