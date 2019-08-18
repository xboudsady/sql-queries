-- USE the follwing query to update a single record.

SELECT table_name SET column_name = 'value_1' WHERE column_name = 'value_2';


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



-- Change all 'Tabby', to 'Shorthair' from the 'breed' column

UPDATE cats SET breed = 'Shorthair' WHERE breed = 'Tabby';

-- +--------+----------------+-----------+------+
-- | cat_id | name           | breed     | age  |
-- +--------+----------------+-----------+------+
-- |      1 | Ringo          | Shorthair |    4 |
-- |      2 | Cindy          | Main Coon |   10 |
-- |      3 | Dumbledore     | Main Coon |   11 |
-- |      4 | Egg            | Persian   |    4 |
-- |      5 | Misty          | Shorthair |   13 |
-- |      6 | George Michael | Ragdoll   |    9 |
-- |      7 | Jackson        | Sphynx    |    7 |
-- +--------+----------------+-----------+------+
-- 7 rows in set (0.00 sec)



-- Change a single record using the WHERE clause

UPDATE cats SET age = 14 WHERE name = 'Misty';

-- +--------+----------------+-----------+------+
-- | cat_id | name           | breed     | age  |
-- +--------+----------------+-----------+------+
-- |      1 | Ringo          | Shorthair |    4 |
-- |      2 | Cindy          | Main Coon |   10 |
-- |      3 | Dumbledore     | Main Coon |   11 |
-- |      4 | Egg            | Persian   |    4 |
-- |      5 | Misty          | Shorthair |   14 |
-- |      6 | George Michael | Ragdoll   |    9 |
-- |      7 | Jackson        | Sphynx    |    7 |
-- +--------+----------------+-----------+------+
-- 7 rows in set (0.00 sec)




UPDATE cats SET name = 'Jack' WHERE name = 'Jackson';

-- +--------+---------+--------+------+
-- | cat_id | name    | breed  | age  |
-- +--------+---------+--------+------+
-- |      7 | Jackson | Sphynx |    7 |
-- +--------+---------+--------+------+

-- To

-- +--------+------+--------+------+
-- | cat_id | name | breed  | age  |
-- +--------+------+--------+------+
-- |      7 | Jack | Sphynx |    7 |
-- +--------+------+--------+------+
-- 1 row in set (0.00 sec)



UPDATE cats SET breed = 'British Shorthair' WHERE name = 'Ringo';

-- +--------+-------+-----------+------+
-- | cat_id | name  | breed     | age  |
-- +--------+-------+-----------+------+
-- |      1 | Ringo | Shorthair |    4 |
-- +--------+-------+-----------+------+
-- 1 row in set (0.00 sec)

-- To

-- +--------+-------+-------------------+------+
-- | cat_id | name  | breed             | age  |
-- +--------+-------+-------------------+------+
-- |      1 | Ringo | British Shorthair |    4 |
-- +--------+-------+-------------------+------+
-- 1 row in set (0.00 sec)



UPDATE cats SET age = 12 WHERE breed = 'Main Coon';

-- +--------+------------+-----------+------+
-- | cat_id | name       | breed     | age  |
-- +--------+------------+-----------+------+
-- |      2 | Cindy      | Main Coon |   10 |
-- |      3 | Dumbledore | Main Coon |   11 |
-- +--------+------------+-----------+------+
-- 2 rows in set (0.00 sec)

-- To

-- +--------+------------+-----------+------+
-- | cat_id | name       | breed     | age  |
-- +--------+------------+-----------+------+
-- |      2 | Cindy      | Main Coon |   12 |
-- |      3 | Dumbledore | Main Coon |   12 |
-- +--------+------------+-----------+------+
-- 2 rows in set (0.00 sec)