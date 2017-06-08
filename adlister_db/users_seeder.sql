use adlister_db;

TRUNCATE users;

INSERT INTO users (username, email, password)
VALUES ('Tuesday', 'tuesday@mail.com', '123'),
       ('Ian', 'ian@mail.com', '123'),
       ('Mike', 'mike@mail.com', '123'),
       ('Jackie', 'jackie@mail.com', '123'),
       ('Zach', 'zach@mail.com', '123');
