USE lfschool;

SELECT *
FROM std_details
INNER JOIN sub_details ON std_details.std_sub = sub_details.sub_id;

SELECT *
FROM std_details 
LEFT JOIN sub_details 
ON std_details.std_sub = sub_details.sub_id; 

SELECT * 
FROM std_details 
RIGHT JOIN sub_details 
ON std_details.std_sub = sub_details.sub_id;

SELECT std_details.std_name, sub_details.sub_name
FROM std_details
LEFT OUTER JOIN sub_details
ON std_details.std_sub = sub_details.sub_id;

SELECT std_details.std_name, sub_details.sub_name
FROM std_details
RIGHT OUTER JOIN sub_details
ON std_details.std_sub = sub_details.sub_id;

SELECT *
FROM std_details
CROSS JOIN std_fee;

SELECT A.std_name, B.std_name
FROM std_details A, std_details B
WHERE A.id = B.id;
