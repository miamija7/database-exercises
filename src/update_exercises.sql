USE codeup_test_db;

SELECT * FROM albums;
UPDATE albums SET sales = sales * 10;

SELECT name  AS 'All albums released before 1980', release_date AS 'Release Date' FROM albums WHERE release_date < 1981;
UPDATE albums SET release_date = release_date - 100 WHERE release_date < 1981;

SELECT name AS 'Albums by Michael Jackson' FROM albums WHERE artist = 'Michael Jackson';
UPDATE albums SET artist = 'Peter Jackson' WHERE artist = 'Michael Jackson';