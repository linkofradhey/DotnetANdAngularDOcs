--FIltering Data--
SELECT * FROM Customers

SELECT customer_id, first_name,last_name,phone,email FROM Customers

SELECT customer_id, first_name,last_name,(first_name+' '+last_name) AS NAME, phone,email FROM Customers