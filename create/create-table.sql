-- Use the following sql command to create a new table. 
-- Table names are generally pluralize, with and 's'

CREATE TABLE table_name
    (
        column_name data_type,
        column_name data_type
    );
    
    
-- EXAMPLE 1

CREATE TABLE cats
    (
        cat_id  INT NOT NULL AUTO_INCREMENT,
        name    VARCHAR(100),
        breed   VARCHAR(100),
        age     INT,
        PRIMARY KEY (cat_id)
    );


    
-- EXAMPLE 2 with NOT NULL

CREATE TABLE cats2
    (
        name VARCHAR(100) NOT NULL,
        age INT NOT NULL
    );

    
    
-- EXAMPLE 3 - with Set DEFAULT Values

CREATE TABLE cats3
    (
        name VARCHAR(100) DEFAULT 'unamed',
        age INT DEFAULT 99
    );
    


-- EXAMPLE 4 - with PRIMARY KEY

CREATE TABLE unique_cats
    (
        cat_id INT NOT NULL,
        name VARCHAR(100),
        age INT,
        PRIMARY KEY (cat_id)
    );
    

-- EXAMPLE 5 Employee table, with mandatory field, primary key - auto increment

CREATE TABLE employees
    (
        id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
        last_name VARCHAR(255) NOT NULL,
        first_name VARCHAR(255) NOT NULL,
        middle_name VARCHAR(255),
        age INT NOT NULL,
        current_status VARCHAR(100) NOT NULL DEFAULT 'employed'
    );
    
    

-- EXAMPLE 5

CREATE TABLE shirts
    (
        shirt_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
        article VARCHAR(100),
        color VARCHAR(100),
        shirt_size VARCHAR(100),
        last_worn INT
    );
    
-- OUTPUT
-- +------------+--------------+------+-----+---------+----------------+
-- | Field      | Type         | Null | Key | Default | Extra          |
-- +------------+--------------+------+-----+---------+----------------+
-- | shirt_id   | int(11)      | NO   | PRI | NULL    | auto_increment |
-- | article    | varchar(100) | YES  |     | NULL    |                |
-- | color      | varchar(100) | YES  |     | NULL    |                |
-- | shirt_size | varchar(100) | YES  |     | NULL    |                |
-- | last_worn  | int(11)      | YES  |     | NULL    |                |
-- +------------+--------------+------+-----+---------+----------------+
-- 5 rows in set (0.00 sec)