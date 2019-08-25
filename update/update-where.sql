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





-- ////////////////////  NEW DATASET  ////////////////////

-- SAMPLE DB

-- +----------+------------+--------+------------+-----------+
-- | shirt_id | article    | color  | shirt_size | last_worn |
-- +----------+------------+--------+------------+-----------+
-- |        1 | t-shirt    | white  | S          |        10 |
-- |        2 | t-shirt    | green  | S          |       200 |
-- |        3 | polo shirt | black  | M          |        10 |
-- |        4 | tank top   | blue   | S          |        50 |
-- |        5 | t-shirt    | pink   | S          |         0 |
-- |        6 | polo shirt | red    | M          |         5 |
-- |        7 | tank top   | white  | S          |       200 |
-- |        8 | tank top   | blue   | M          |        15 |
-- |        9 | polo shirt | purple | M          |        50 |
-- +----------+------------+--------+------------+-----------+
-- 9 rows in set (0.00 sec)


-- UPDATE all polo shirts, Change their size to L

UPDATE shirts SET shirt_size = 'L' WHERE article = 'polo shirt';

-- +----------+------------+--------+------------+-----------+
-- | shirt_id | article    | color  | shirt_size | last_worn |
-- +----------+------------+--------+------------+-----------+
-- |        3 | polo shirt | black  | M          |        10 |
-- |        6 | polo shirt | red    | M          |         5 |
-- |        9 | polo shirt | purple | M          |        50 |
-- +----------+------------+--------+------------+-----------+
-- 3 rows in set (0.00 sec)

-- TO

-- +----------+------------+--------+------------+-----------+
-- | shirt_id | article    | color  | shirt_size | last_worn |
-- +----------+------------+--------+------------+-----------+
-- |        3 | polo shirt | black  | L          |        10 |
-- |        6 | polo shirt | red    | L          |         5 |
-- |        9 | polo shirt | purple | L          |        50 |
-- +----------+------------+--------+------------+-----------+
-- 3 rows in set (0.00 sec)



-- UPDATE all shirts from last worn from 0 to 15

UPDATE shirts SET last_worn = 0 WHERE last_worn = 15;

-- +----------+----------+-------+------------+-----------+
-- | shirt_id | article  | color | shirt_size | last_worn |
-- +----------+----------+-------+------------+-----------+
-- |        5 | t-shirt  | pink  | S          |         0 |
-- |        8 | tank top | blue  | M          |         0 |
-- +----------+----------+-------+------------+-----------+
-- 2 rows in set (0.00 sec)
 


-- Update all white shirts, change sixe to 'xs' and color to 'off white'

UPDATE shirts SET shirt_size = 'XS', color = 'off white' WHERE color = 'white';

-- +----------+----------+-------+------------+-----------+
-- | shirt_id | article  | color | shirt_size | last_worn |
-- +----------+----------+-------+------------+-----------+
-- |        1 | t-shirt  | white | S          |        10 |
-- |        7 | tank top | white | S          |       200 |
-- +----------+----------+-------+------------+-----------+
-- 2 rows in set (0.00 sec)

-- TO

-- +----------+----------+-----------+------------+-----------+
-- | shirt_id | article  | color     | shirt_size | last_worn |
-- +----------+----------+-----------+------------+-----------+
-- |        1 | t-shirt  | off white | XS         |        10 |
-- |        7 | tank top | off white | XS         |       200 |
-- +----------+----------+-----------+------------+-----------+
-- 2 rows in set (0.00 sec)