-- Use the following command to insert a record into the table.
-- 1. Specify the table, assuming you already in the database
-- 2. Specify the columns,
-- 3. The values of each columns

-- NOTE: The orders matter.

INSERT INTO cats (name, age)
VALUES  ('Charlie', 10);


-- MULTIPLE INSERT

INSERT INTO cats (name, age)
VALUES  ('Charlie', 10),
        ('Sadie', 3),
        ('Lazie Bear', 1);

-- To view records in table, use the SELECT * FROM table_name;


-- EXAMPLE 1 - Multi Insert

INSERT INTO people (first_name, last_name, age)
VALUES  ('Tina', 'Belcher', 13),
        ('Bob', 'Belcher', 42);
        

INSERT INTO people (first_name, last_name, age)
VALUES  ('Linda', 'Belcher', 45),
        ('Phillip', 'Belcher', 38),
        ('Calvin', 'Fischoeder', 70);
        
        

INSERT INTO employees(first_name, last_name, age)
VALUES  ('Dora', 'Smith', 58);


INSERT INTO cats(name, breed, age)
VALUES  ('Ringo', 'Tabby', 4),
        ('Cindy', 'Main Coon', 10),
        ('Dumbledore', 'Main Coon', 11),
        ('Egg', 'Persian', 4),
        ('Misty', 'Tabby', 13),
        ('George Michael', 'Ragdoll', 9),
        ('Jackson', 'Sphynx', 7);
        