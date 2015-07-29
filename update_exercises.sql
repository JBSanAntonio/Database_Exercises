Use codeup_test_db;

SELECT name as 'All Albums in table' FROM albums;
UPDATE albums
SET sales_in_millions = sales_in_millions * 10;
SELECT sales_in_millions as 'updated sales on steroids' FROM albums;

SELECT release_date as 'Pre-1980 Albums' FROM albums WHERE release_date <1980;
UPDATE albums
SET release_date = release_date - 10
WHERE release_date BETWEEN 1901 AND 1980;
SELECT release_date as 'Take 10 years off release_date update' FROM albums;

SELECT name as 'All Michael Jackson albums' FROM albums WHERE artist = 'Michael Jackson'; 
UPDATE albums
SET artist = 'Peter Jackson' 
WHERE id=6;
SELECT artist as 'Not Michael' FROM albums;



 
