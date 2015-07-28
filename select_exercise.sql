Use codeup_test_db;


/*The name of all albums by Pink Floyd.*/
SELECT name as 'Albums by Pink Floyd' FROM albums WHERE artist = 'Pink Floyd'; 

/*The year Saturday Night Fever was released*/
SELECT release_date as 'Saturday Night Fever Release Year' FROM albums WHERE name = 'Saturday Night Fever';

/*The genre for Come on Over*/
SELECT genre as 'The Genre for the Album ~ Come on Over' FROM albums WHERE name = 'Come on Over';

/*Which albums were released in the 1990s*/
SELECT name as '90s Albums' FROM albums WHERE release_date BETWEEN 1990 AND 1999;

/*Which albums had less than 20 million certified sales*/
SELECT name as 'Albums with $20m+ Certified Sales' FROM albums WHERE sales_in_millions <20;

/*All the albums in the rock genre. Is this all the rock albums in the table?*/
SELECT name as 'All Kinds of Rock Genre Albums' FROM albums WHERE genre LIKE '%rock%';