USE codeup_test_db;

DROP TABLE IF EXISTS albums;

CREATE TABLE albums (
    id INT UNSIGNED NOT NULL auto_increment,
    artist VARCHAR(50),
    name VARCHAR(255),
    release_date  INT,
    sales FLOAT,
    genre VARCHAR(100),
    primary key(id)
)