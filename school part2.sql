USE lfschool;

CREATE TABLE std_fee(id INT PRIMARY KEY,std_id INT NOT NULL,amount VARCHAR(200) NOT NULL,a_status VARCHAR(200) NOT NULL, a_date DATE NOT NULL,CONSTRAINT FK_stdid FOREIGN KEY (id) REFERENCES std_details(ID));

DROP TABLE std_fee;

INSERT INTO std_fee(id,std_id,amount,a_status,a_date) VALUES 
(1,1,"10000","paid","2024-10-01"),
(2,2,"12000","pending","2024-12-30"),
(3,3,"5000","paid","2024-12-30"),
(4,4,"5000","pending","2024-12-30"),
(5,5,"15000","paid","2024-12-30");

SELECT * FROM std_fee;

SELECT * FROM std_details;

SELECT * FROM sub_details;

SELECT id,std_name,std_age FROM  std_details;

SELECT DISTINCT std_age FROM std_details;

SELECT id,std_name,std_age
FROM std_details
WHERE std_gen = "M" ;


SELECT id,std_name,std_age
FROM std_details
WHERE std_gen = "F" ;

SELECT id,std_name,std_age
FROM std_details
WHERE std_gen = "M" AND std_age = 23 ;

SELECT id,std_name,std_age
FROM std_details
WHERE std_gen = "M" OR std_age = 23 ;

SELECT id,std_name,std_age
FROM std_details
WHERE NOT std_gen = "M" AND std_age = 23 ;


SELECT id,std_name,std_age
FROM std_details
WHERE NOT std_gen = "M" OR std_age = 23 ;


SELECT id,std_name,std_age
FROM std_details
WHERE std_name LIKE "a%" ;

SELECT id,std_name,std_age
FROM std_details
WHERE std_name LIKE "%u" ;

SELECT id,std_name,std_age
FROM std_details
WHERE std_name LIKE "_n%" ;

SELECT *
FROM std_details
WHERE std_sub NOT IN  (1,2,3);

SELECT *
FROM std_details
WHERE std_sub IN  (1,2,3);

SELECT *
FROM std_details
WHERE std_dob BETWEEN "2001-01-01" AND "2003-01-01";

SELECT *
FROM std_details
WHERE std_age BETWEEN "20" AND "24";

SELECT id AS Roll_no,std_name AS Name,std_age AS Age
FROM std_details;

SELECT * FROM std_fee;

SELECT *
FROM std_fee 
ORDER BY amount DESC;

SELECT *
FROM std_fee 
ORDER BY amount ASC;

SELECT DISTINCT(a_status),COUNT(a_status)
FROM std_fee 
GROUP BY a_status;

SELECT * 
FROM std_fee
WHERE a_status = "paid"
LIMIT 3 ;


SELECT * 
FROM std_fee
WHERE a_status = "paid"
LIMIT 3 OFFSET 2;

SELECT MIN(amount)
FROM std_fee;

SELECT MAX(amount)
FROM std_fee;

SELECT AVG(amount)
FROM std_fee;

SELECT COUNT(id)
FROM std_fee;

SELECT SUM(amount)
FROM std_fee;