-- Use the following query to specify our select command after columns.


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



-- Single matching INTEGER

SELECT * FROM cats WHERE age = 4;

-- +--------+-------+---------+------+
-- | cat_id | name  | breed   | age  |
-- +--------+-------+---------+------+
-- |      1 | Ringo | Tabby   |    4 |
-- |      4 | Egg   | Persian |    4 |
-- +--------+-------+---------+------+
-- 2 rows in set (0.00 sec)


SELECT * FROM cats WHERE breed = 'Tabby';

-- +--------+-------+-------+------+
-- | cat_id | name  | breed | age  |
-- +--------+-------+-------+------+
-- |      1 | Ringo | Tabby |    4 |
-- |      5 | Misty | Tabby |   13 |
-- +--------+-------+-------+------+
-- 2 rows in set (0.00 sec)



-- Single matching STRING, notice this is CASE INSENSITIVE;

SELECT * FROM cats WHERE name = 'Egg';
SELECT * FROM cats WHERE name = 'EGG';  
SELECT * FROM cats WHERE name = 'egG';

-- +--------+------+---------+------+
-- | cat_id | name | breed   | age  |
-- +--------+------+---------+------+
-- |      4 | Egg  | Persian |    4 |
-- +--------+------+---------+------+
-- 1 row in set (0.00 sec)



-- WHERE 'cat_id' is same as 'age'

SELECT cat_id, age FROM cats WHERE cat_id = age;

-- +--------+------+
-- | cat_id | age  |
-- +--------+------+
-- |      4 |    4 |
-- |      7 |    7 |
-- +--------+------+
-- 2 rows in set (0.00 sec)