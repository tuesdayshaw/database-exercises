-- Tables

use codeup_test_db;

DROP TABLE IF EXISTS quotes;
DROP TABLE IF EXISTS airports;
DROP TABLE IF EXISTS people;
DROP TABLE IF EXISTS users;


create table quotes (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  author_first_name VARCHAR(50),
  author_last_name VARCHAR(100) NOT NULL,
  content TEXT NOT NULL,
  created_at DATETIME,
  updates_at DATETIME
);

create table airports (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY ,
  airport_code CHAR(3),
  location VARCHAR(255),
  description TEXT
);

create table people (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY ,
  name VARCHAR(255) NOT NULL,
  age DECIMAL(4, 1) NOT NULL
);

create table users (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY ,
  username VARCHAR(255) NOT NULL ,
  password VARCHAR(255) NOT NULL ,
  is_admin TINYINT NOT NULL
);