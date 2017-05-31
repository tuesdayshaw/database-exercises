-- Tables


create table quotes (
  author_first_name VARCHAR(50),
  author_last_name VARCHAR(100) NOT NULL,
  content TEXT NOT NULL
);

create table airports (
  airport_code CHAR(3),
  location VARCHAR(255),
  description TEXT
);

create table people (
  name VARCHAR(255) NOT NULL,
  age DECIMAL(4, 1) NOT NULL,
  salary DOUBLE
);

create table users (
  username VARCHAR(255) NOT NULL ,
  password VARCHAR(255) NOT NULL ,
  is_admin TINYINT NOT NULL
);