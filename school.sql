-- create database 
CREATE DATABASE lfschool;
-- select database
USE lfschool;
-- create table 1
CREATE TABLE std_details(
id INT PRIMARY KEY, 
std_name VARCHAR(200) NOT NULL,
std_email VARCHAR(400) UNIQUE,
std_dob DATE NOT NULL,
std_age INT CHECK ( std_age >= 17) ,
std_gen VARCHAR(50) CHECK (std_gen IN ('M','F') ),
std_sub INT 
);
-- create table 2
CREATE TABLE sub_details(
sub_id INT PRIMARY KEY, 
sub_name VARCHAR(200)
);
-- alter table 1
ALTER TABLE std_details
ADD CONSTRAINT fk_std_sub 
FOREIGN KEY (std_sub) REFERENCES sub_details(sub_id);
-- insert value to table 2
INSERT INTO sub_details(sub_id,sub_name) VALUES 
(1,"maths"),
(2,"science"),
(3,"english"),
(4,"computer science"),
(5,"arts");
-- insert value to table 1
INSERT INTO std_details(id,std_name,std_email,std_dob,std_age,std_gen,std_sub) VALUES 
(1,"alan","alan@gmail.com",'2001-01-01',23,"M",1),
(2,"amal","amal@gmail.com",'2001-02-01',23,"M",2),
(3,"anju","anju@gmail.com",'2000-01-13',24,"F",3),
(4,"achu","achu@gmail.com",'2002-10-01',22,"F",4),
(5,"joy","joy@gmail.com",'2003-12-01',21,"M",5),
(6,"alan","alanjoy@gmail.com",'2001-01-01',18,"M",1);
-- update details
UPDATE std_details 
SET std_name = "joyalan" , std_email = "joyalan@gmail.com"
WHERE id = 6 ;
-- show tables
SELECT * FROM std_details;
SELECT * FROM sub_details;
-- delete a single row 
DELETE FROM std_details
WHERE id = 6;


