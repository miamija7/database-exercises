USE codeup_test_db;

SELECT name AS 'Songs Released Before 1991', artist AS 'Artist', release_date AS 'Released Date' FROM albums WHERE release_date < 1991;
DELETE FROM albums WHERE release_date < 1991;

SELECT name AS 'Disco Songs', artist AS 'Artist' FROM albums WHERE genre = 'Disco';
DELETE FROM albums WHERE genre = 'Disco';

SELECT name AS 'The Beatles Songs', artist AS 'Artist' FROM albums WHERE artist = 'The Beatles';
DELETE FROM albums WHERE artist = 'The Beatles';