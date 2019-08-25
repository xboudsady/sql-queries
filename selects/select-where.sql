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


-- SELECT all shirts, But Only Print Out Article and Color

SELECT article, color FROM shirts; 

-- OUTPUT

-- +------------+--------+
-- | article    | color  |
-- +------------+--------+
-- | t-shirt    | white  |
-- | t-shirt    | green  |
-- | polo shirt | black  |
-- | tank top   | blue   |
-- | t-shirt    | pink   |
-- | polo shirt | red    |
-- | tank top   | white  |
-- | tank top   | blue   |
-- | polo shirt | purple |
-- +------------+--------+
-- 9 rows in set (0.00 sec)


-- SELECT all medium shirts, Print Out Everything But shirt_id

SELECT article, color, shirt_size, last_worn FROM shirts WHERE shirt_size = 'M';

-- OUTPUT

-- +------------+--------+------------+-----------+
-- | article    | color  | shirt_size | last_worn |
-- +------------+--------+------------+-----------+
-- | polo shirt | black  | M          |        10 |
-- | polo shirt | red    | M          |         5 |
-- | tank top   | blue   | M          |        15 |
-- | polo shirt | purple | M          |        50 |
-- +------------+--------+------------+-----------+
-- 4 rows in set (0.00 sec)

