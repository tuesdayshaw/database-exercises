use adlister_db;

TRUNCATE ads;

INSERT INTO ads (user_id, title, description)
VALUES (1, 'Shoes', 'adidas for sale'),
       (2, 'TV', 'tv for sale'),
       (3, 'Iphone', 'Iphone for sale'),
       (4, 'Couch', 'couch for sale');

