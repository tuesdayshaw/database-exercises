
USE codeup_test_db;

SELECT name FROM albums where artist = 'Pink Floyd';
SELECT release_date from albums where name = 'Saturday Night Fever';
SELECT genre from albums where name = 'Rumours';
SELECT name from albums where release_date between 1990 and 1999;
SELECT artist, name, sales from albums where sales between 20.0 and 25.0;
SELECT name from albums where genre = '%Rock%';