CREATE DATABASE product_one;

USE product_one;

CREATE table details(id int primary key,user_name varchar(200),city varchar(200),country varchar(200));

insert INTO details(id,user_name,city,country) value(1,"angel","irinjalakuda","India");

insert INTO details(id,user_name,city,country) values 
(2,"ammu","irinjalakuda","India"),
(3,"alwin","thrissur","India"),
(4,"appu","thrissur","India");

update details set city="kollam" where id=3;

delete from details where id=4;

select * from details;

select id,user_name from details;