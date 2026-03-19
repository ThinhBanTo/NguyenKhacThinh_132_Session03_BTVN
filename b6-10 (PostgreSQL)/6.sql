create schema library;
set search_path to library,public;

create table Books(
    book_id serial primary key ,
    title varchar(100) not null ,
    author varchar(100) not null ,
    published_year int not null ,
    available boolean default true
);

create table Members(
    member_id serial primary key ,
    name varchar(100) not null ,
    email varchar(100) not null unique ,
    join_date date default current_date
);
