
CREATE TABLE CANDIDATES(
id			int				IDENTITY(1,1) PRIMARY KEY,
fullname    varchar(100)   NOT NULL
)

CREATE TABLE EMPLOYEES(
id   int IDENTITY(1,1) PRIMARY KEY,
fullname varchar(100)   NOT NULL 
)

INSERT INTO CANDIDATES VALUES ('John Doe'),('Lily Bush'),('Peter Drucker'),('Jane Doe')
SELECT * FROM CANDIDATES

INSERT INTO EMPLOYEES VALUES ('John Doe'),('Jane Doe'),('Michael Scott'),('Jack Sparrow')
SELECT * FROM EMPLOYEES

----INNER JOIN--
SELECT C.id AS 'Candidate ID',C.fullname AS 'Candidate Name',E.fullname AS 'Employee Name' FROM CANDIDATES C
INNER JOIN
EMPLOYEES E
ON C.fullname=E.fullname

SELECT C.id AS 'Candidate ID',C.fullname AS 'Candidate Name',E.fullname AS 'Employee Name' FROM CANDIDATES C
INNER JOIN
EMPLOYEES E
ON C.fullname=E.fullname WHERE c.fullname='John Doe'

SELECT C.customer_id,C.first_name,C.email,O.order_id,o.order_date FROM customers C 
INNER JOIN
orders O 
ON C.customer_id=O.customer_id WHERE C.customer_id=2

--LEFT JOIN---
SELECT * FROM CANDIDATES C
LEFT JOIN
EMPLOYEES E
ON C.fullname=E.fullname

DELETE FROM orders WHERE customer_id=1
SELECT * FROM orders WHERE customer_id=1

SELECT C.customer_id,C.first_name,C.email,O.order_id,o.order_date FROM customers C 
LEFT JOIN
orders O
ON C.customer_id=O.customer_id

---RIGHT JOIN--
SELECT * FROM CANDIDATES C
RIGHT JOIN
EMPLOYEES E
ON C.fullname=E.fullname

---FULL JOIN--
SELECT * FROM CANDIDATES C
FULL JOIN
EMPLOYEES E
ON C.fullname=E.fullname

---HOW TO SELECT DATA FROM 3 TABLES USING JOINS---
SELECT C.customer_id,C.first_name,C.email,O.order_id,order_date,I.item_id,i.list_price,i.quantity FROM customers C 
INNER JOIN
ORDERS O
ON C.customer_id=O.customer_id
INNER JOIN
order_items I
ON O.order_id=I.order_id