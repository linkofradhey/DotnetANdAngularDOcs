--Group By---
SELECT order_id,SUM(quantity*list_price) AS 'TOTAL AMOUNT' 
FROM order_items Group by order_id

SELECT order_id,SUM(quantity*list_price) AS 'TOTAL AMOUNT' 
FROM order_items WHERE order_id IN(1,2,3)
Group by order_id

----HAVING---

SELECT order_id,SUM(quantity*list_price) AS 'TOTAL AMOUNT' 
FROM order_items Group by order_id
HAVING SUM(quantity*list_price)>10000