use customers;

-- Select * from details;

-- insert into details (customer_id, customer_name, contact_name, address, city, postal_code, country) value ('1', 'Alfred', 'Alfred', 'Obere_str.57', 'Frankfrut', '12209', 'Germany'
-- );

-- SET SQL_SAFE_UPDATES = 0;
-- delete from details where customer_id=1;

create table person(Id int PRIMARY KEY auto_increment,Name_person varchar(50),job varchar(50));
select * from person;
insert into person(Name_person,job) values("angel","angel"),("angel","angel");

DROP TABLE person;

DROP DATABASE customerS;