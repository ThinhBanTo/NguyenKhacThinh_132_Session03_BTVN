create schema sales;
set search_path to sales,public;

create table Products(
    product_id serial primary key ,
    product_name varchar(50) not null ,
    price numeric(8,2) not null ,
    stock_quantity int check(stock_quantity>=0)
);

create table Orders(
    order_id serial primary key ,
    order_date date default current_date,
    member_id int not null references library.members(member_id)
);

create table OrderDetails(
    order_detail_id serial primary key ,
    order_id int not null references Orders(order_id),
    product_id int not null references Products(product_id),
    quantity int not null check(quantity>=0)
);

