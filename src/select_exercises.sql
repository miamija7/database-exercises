USE codeup_test_db;

SELECT name AS 'Pink Floyd Albums' FROM albums WHERE artist = 'Pink Floyd';
SELECT 'The year Sgt. Pepper''s Lonely Hearts Club Band was released' AS 'Info', release_date AS 'Year' FROM albums WHERE name = 'Sgt. Pepper''s Lonely Hearts Club Band';
SELECT name AS 'Albums released in the 1990s' FROM albums WHERE release_date BETWEEN 1990 AND 1999;
SELECT name AS 'Albums with 20 million certified sales or less' FROM albums WHERE sales < 20.0;
SELECT name AS '"Rock" Genre' FROM albums WHERE genre = 'Rock';

