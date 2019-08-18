-- Use the following query to select table columns as an alias. 
-- Returning column as a result will not alter the original table column name.


-- SAMPLE DATABASE

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



-- Changing 'cat_id' to 'id' for return column results

SELECT cat_id AS id FROM cats;

-- +----+
-- | id |
-- +----+
-- |  1 |
-- |  2 |
-- |  3 |
-- |  4 |
-- |  5 |
-- |  6 |
-- |  7 |
-- +----+
-- 7 rows in set (0.00 sec)


-- Return 'name', 'breed' AS 'cat name' and 'kitty breed'

SELECT name AS 'cat name', breed AS 'kitty breed' FROM cats;

-- +----------------+-------------+
-- | cat name       | kitty breed |
-- +----------------+-------------+
-- | Ringo          | Tabby       |
-- | Cindy          | Main Coon   |
-- | Dumbledore     | Main Coon   |
-- | Egg            | Persian     |
-- | Misty          | Tabby       |
-- | George Michael | Ragdoll     |
-- | Jackson        | Sphynx      |
-- +----------------+-------------+
-- 7 rows in set (0.00 sec)