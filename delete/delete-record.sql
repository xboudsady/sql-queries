--- Use the following query to delete a record from a table.

--- SAMPLE DATABASE

-- +--------+----------------+-------------------+------+
-- | cat_id | name           | breed             | age  |
-- +--------+----------------+-------------------+------+
-- |      1 | Ringo          | British Shorthair |    4 |
-- |      2 | Cindy          | Main Coon         |   12 |
-- |      3 | Dumbledore     | Main Coon         |   12 |
-- |      4 | Egg            | Persian           |    4 |
-- |      5 | Misty          | Shorthair         |   14 |
-- |      6 | George Michael | Ragdoll           |    9 |
-- |      7 | Jack           | Sphynx            |    7 |
-- +--------+----------------+-------------------+------+
-- 7 rows in set (0.00 sec)



-- DELTE all cats with the name 'Egg'

DELETE FROM cats WHERE name = 'Egg';

-- +--------+----------------+-------------------+------+
-- | cat_id | name           | breed             | age  |
-- +--------+----------------+-------------------+------+
-- |      1 | Ringo          | British Shorthair |    4 |
-- |      2 | Cindy          | Main Coon         |   12 |
-- |      3 | Dumbledore     | Main Coon         |   12 |
-- |      5 | Misty          | Shorthair         |   14 |
-- |      6 | George Michael | Ragdoll           |    9 |
-- |      7 | Jack           | Sphynx            |    7 |
-- +--------+----------------+-------------------+------+
-- 6 rows in set (0.00 sec)



-- DELETE all 4 year old cats

DELETE FROM cats WHERE age = 4;

-- +--------+----------------+-----------+------+
-- | cat_id | name           | breed     | age  |
-- +--------+----------------+-----------+------+
-- |      2 | Cindy          | Main Coon |   12 |
-- |      3 | Dumbledore     | Main Coon |   12 |
-- |      5 | Misty          | Shorthair |   14 |
-- |      6 | George Michael | Ragdoll   |    9 |
-- |      7 | Jack           | Sphynx    |    7 |
-- +--------+----------------+-----------+------+
-- 5 rows in set (0.00 sec)




-- DELETE cats whose age is the same as their cat_id

DELETE FROM cats where age = cat_id;

-- +--------+----------------+-----------+------+
-- | cat_id | name           | breed     | age  |
-- +--------+----------------+-----------+------+
-- |      2 | Cindy          | Main Coon |   12 |
-- |      3 | Dumbledore     | Main Coon |   12 |
-- |      5 | Misty          | Shorthair |   14 |
-- |      6 | George Michael | Ragdoll   |    9 |
-- +--------+----------------+-----------+------+
-- 4 rows in set (0.00 sec)




-- DELETE all cats

DELETE FROM cats;

-- Empty set (0.00 sec)





-- ////////////////////  NEW DATASET  ////////////////////

-- SAMPLE DB

-- +----------+------------+-----------+------------+-----------+
-- | shirt_id | article    | color     | shirt_size | last_worn |
-- +----------+------------+-----------+------------+-----------+
-- |        1 | t-shirt    | off white | XS         |        10 |
-- |        2 | t-shirt    | green     | S          |       200 |
-- |        3 | polo shirt | black     | L          |        10 |
-- |        4 | tank top   | blue      | S          |        50 |
-- |        5 | t-shirt    | pink      | S          |         0 |
-- |        6 | polo shirt | red       | L          |         5 |
-- |        7 | tank top   | off white | XS         |       200 |
-- |        8 | tank top   | blue      | M          |         0 |
-- |        9 | polo shirt | purple    | L          |        50 |
-- +----------+------------+-----------+------------+-----------+
-- 9 rows in set (0.00 sec)


-- DELETE all old shirts, last worn 200 days ago

DELETE FROM shirts WHERE last_worn = 200;

-- +----------+------------+-----------+------------+-----------+
-- | shirt_id | article    | color     | shirt_size | last_worn |
-- +----------+------------+-----------+------------+-----------+
-- |        1 | t-shirt    | off white | XS         |        10 |
-- |        3 | polo shirt | black     | L          |        10 |
-- |        4 | tank top   | blue      | S          |        50 |
-- |        5 | t-shirt    | pink      | S          |         0 |
-- |        6 | polo shirt | red       | L          |         5 |
-- |        8 | tank top   | blue      | M          |         0 |
-- |        9 | polo shirt | purple    | L          |        50 |
-- +----------+------------+-----------+------------+-----------+
-- 7 rows in set (0.00 sec)


-- DELETE all tank tops, 

DELETE FROM shirts WHERE article = 'tank top';

-- +----------+------------+-----------+------------+-----------+
-- | shirt_id | article    | color     | shirt_size | last_worn |
-- +----------+------------+-----------+------------+-----------+
-- |        1 | t-shirt    | off white | XS         |        10 |
-- |        3 | polo shirt | black     | L          |        10 |
-- |        5 | t-shirt    | pink      | S          |         0 |
-- |        6 | polo shirt | red       | L          |         5 |
-- |        9 | polo shirt | purple    | L          |        50 |
-- +----------+------------+-----------+------------+-----------+
-- 5 rows in set (0.00 sec)


-- DELETE all shirts

DELETE FROM shirts;

-- Empty set (0.00 sec)