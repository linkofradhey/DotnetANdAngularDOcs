
--SELECT SP--

CREATE PROCEDURE SEELCT_CUSTOMERS_WITH_ORDERS_ORDERDETAILS
@customer_id INT
AS
BEGIN
	SELECT C.customer_id, C.first_name, C.email, C.city, O.order_id, O.order_date, I.item_id, I.list_price, I.quantity
	FROM  dbo.customers AS C INNER JOIN
	dbo.orders AS O ON C.customer_id = O.customer_id INNER JOIN
	dbo.order_items AS I ON O.order_id = I.order_id
	WHERE C.customer_id=@customer_id
END


---CALL SP---
SEELCT_CUSTOMERS_WITH_ORDERS_ORDERDETAILS 2