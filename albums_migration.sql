 USE codeup_test_db;

 DROP TABLE IF EXISTS albums;

 CREATE TABLE albums (
 	id INT UNSIGNED NOT NULL AUTO_INCREMENT,
 	artist VARCHAR(100),
 	name VARCHAR(100),
 	release_date YEAR,
 	sales_in_millions FLOAT(15,2) NOT NULL,
 	genre char(100) NOT NULL,
 	PRIMARY KEY(id)
 );

