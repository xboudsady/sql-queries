-- In the MySQL Shell, use the following command to show the columns from a table

-- Use the Databbase

USE database_name;

-- Display the current database being used

SELECT database();

-- Show the columns of a database;


SHOW COLUMNS FROM table_name;

-- Example Output

-- +-------+--------------+------+-----+---------+-------+
-- | Field | Type         | Null | Key | Default | Extra |
-- +-------+--------------+------+-----+---------+-------+
-- | name  | varchar(100) | YES  |     | NULL    |       |
-- | age   | int(11)      | YES  |     | NULL    |       |
-- +-------+--------------+------+-----+---------+-------+
-- 2 rows in set (0.00 sec)


-- You can alternatively use the following instead.

DESC table_name;