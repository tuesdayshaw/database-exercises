USE codeup_test_db;

SELECT 'All albums released after 1991 album table:' AS '';
DELETE FROM albums WHERE release_date > 1991;

SELECT 'All albums within the ''disco'' genre in album table:' AS '';
DELETE FROM albums WHERE id = 7;

SELECT 'All albums released by Meatloaf in album table:' AS '';
DELETE FROM albums WHERE artist = 'Meatloaf';

