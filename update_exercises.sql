USE codeup_test_db;

SELECT 'All album names in album table:' AS '';
SELECT name FROM albums;
SELECT 'All albums released before 1980 in album table:' AS '';
SELECT name, release_date FROM albums WHERE release_date < 1980;
SELECT 'All albums released by Michael Jackson in album table:' AS '';
SELECT artist, name FROM albums WHERE artist = 'Michael Jackson';


UPDATE albums SET sales = (sales * 10);
UPDATE albums SET release_date = (release_date - 100) WHERE release_date < 1980;
UPDATE albums set artist = 'Peter Jackson' WHERE artist = 'Michael Jackson';

SELECT 'All album names in album table:' AS '';
SELECT name FROM albums;
SELECT 'All albums released before 1980 in album table:' AS '';
SELECT name, release_date FROM albums WHERE release_date < 1980;
SELECT 'All albums released by Michael Jackson in album table:' AS '';
SELECT artist, name FROM albums WHERE artist = 'Michael Jackson';