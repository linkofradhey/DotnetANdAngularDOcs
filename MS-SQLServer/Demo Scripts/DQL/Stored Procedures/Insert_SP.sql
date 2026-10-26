
---CREATE PROCEDURE---
CREATE PROCEDURE ADD_STORE
@store_name varchar(25),
@phone		varchar(25)=NULL,
@email		varchar(255)=NULL,
@street		varchar(255)=NULL,
@city		varchar(255)=NULL,
@state		varchar(10)=NULL,
@zipcode	varchar(5)=NULL
AS
BEGIN
	INSERT INTO stores VALUES(@store_name,@phone,@email,@street,@city,@state,@zipcode)

END 


---CALL SP--
ADD_STORE 'TAJ','12345','taj@gmail.com','m.g.road','Pune','MH','422004'

SELECT * FROM STORES