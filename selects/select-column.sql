-- Use the following command to view records, or query records

-- View all records from a TABLE;

SELECT * FROM table_name;


-- SAMPLE DATABASE

-- mysql> select * from cats;
-- +--------+----------------+-----------+------+
-- | cat_id | name           | breed     | age  |
-- +--------+----------------+-----------+------+
-- |      1 | Ringo          | Tabby     |    4 |
-- |      2 | Cindy          | Main Coon |   10 |
-- |      3 | Dumbledore     | Main Coon |   11 |
-- |      4 | Egg            | Persian   |    4 |
-- |      5 | Misty          | Tabby     |   13 |
-- |      6 | George Michael | Ragdoll   |    9 |
-- |      7 | Jackson        | Sphynx    |    7 |
-- +--------+----------------+-----------+------+
-- 7 rows in set (0.00 sec)


--- Selecting only column, or fields from a table

SELECT name FROM cats;

-- mysql> SELECT name FROM cats;
-- +----------------+
-- | name           |
-- +----------------+
-- | Ringo          |
-- | Cindy          |
-- | Dumbledore     |
-- | Egg            |
-- | Misty          |
-- | George Michael |
-- | Jackson        |
-- +----------------+
-- 7 rows in set (0.00 sec)



-- Selectiong two columns
SELECT  name, age
FROM    cats;

-- +----------------+------+
-- | name           | age  |
-- +----------------+------+
-- | Ringo          |    4 |
-- | Cindy          |   10 |
-- | Dumbledore     |   11 |
-- | Egg            |    4 |
-- | Misty          |   13 |
-- | George Michael |    9 |
-- | Jackson        |    7 |
-- +----------------+------+
-- 7 rows in set (0.00 sec)



