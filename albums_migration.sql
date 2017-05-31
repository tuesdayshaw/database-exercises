
USE codeup_test_db;

DROP TABLE IF EXISTS albums;

CREATE TABLE albums (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  artist VARCHAR(255),
  name VARCHAR(255),
  release_date YEAR(4),
  sales FLOAT,
  genre VARCHAR(255)
);