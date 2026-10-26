---NON CLUSTERED INDEXES--
CREATE INDEX Index_NonClustered_Email
ON Customers(customer_id)

SELECT * FROM Customers WHERE email='jacquline.duncan@yahoo.com'