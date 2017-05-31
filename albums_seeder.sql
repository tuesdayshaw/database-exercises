
USE codeup_test_db;

TRUNCATE albums;

INSERT INTO albums (artist, name, release_date, sales, genre)
VALUES ('Michael Jackson', 'Thriller', 1982, 46.3, 'Rock, Pop, R&B'),
       ('AC/DC', 'Back in Black', 1980, 26.1, 'Hard Rock'),
       ('Pink Floyd', 'Dark Side of the Moon', 1973, 24.2, 'Prog Rock'),
       ('Whitney Houston', 'The Bodyguard', 1992, 27.4, 'R&B, Soul, Pop, Soundtrack'),
       ('Meatloaf', 'Bat out of Hell', 1977, 21.5, 'Hard rock, Progressive rock'),
       ('Eagles', 'Greatest Hits', 1976, 32.2, 'Rock, Soft rock, Folk rock'),
       ('BeeGees', 'Saturday Night Fever', 1977, 32.2, 'Disco'),
       ('Fleetwood Mac', 'Rumours', 1977, 27.9, 'Soft rock');
