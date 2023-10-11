-- script that creates a table users with the following fields:
-- With these attributes:
-- id, integer, never null, auto increment and primary key
-- email, string (255 characters), never null and unique
-- name, string (255 characters)
-- country, enumeration of countries: US, CO and TN, never null (= default will be the first element of the enumeration, here US)
-- If the table already exists, your script should not fail
-- Your script can be executed on any database
CREATE TABLE IF NOT EXISTS users (
       id int NOT NULL PRIMARY KEY AUTO_INCREMENT,
       email varchar(255) NOT NULL UNIQUE,
       name varchar(255),
       country ENUM('US', 'CO', 'TN') DEFAULT 'US' NOT NULL
)
