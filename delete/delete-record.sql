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