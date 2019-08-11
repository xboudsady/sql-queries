-- The following example will return customers name from the customer table, along with the count of records in the orders table
-- https://www.w3schools.com/sql/trysql.asp?filename=trysql_op_or

SELECT 	customerName,
        COUNT(*) AS 'numbers of order'
FROM 	customers
INNER JOIN orders
	    ON orders.customerID = customers.customerID
GROUP BY customers.customerID;

-- Number of Records: 74

-- CustomerName	                        numbers of order

-- Ana Trujillo Emparedados y helados	1
-- Antonio Moreno Taquería	            1
-- Around the Horn	                    2
-- Berglunds snabbköp	                3
-- Blondel père et fils	                4
-- Bólido Comidas preparadas	        1
-- Bon app'	                            3
-- Bottom-Dollar Marketse	            4
-- B's Beverages	                    1