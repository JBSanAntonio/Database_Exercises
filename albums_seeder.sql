Use codeup_test_db;

TRUNCATE albums;

INSERT INTO albums (artist, name, sales_in_millions, release_date, genre)
VALUES 
('AC/DC', 'Back in Black', '25.9', '1980', 'Hard rock'),
('Bee Gees', 'Saturday Night Fever', '19', '1977', 'Disco'),
('Eagles', 'Their Greatest Hits', '32.2', '1976', 'Rock'),
('Fleetwood Mac', 'Rumours', '27.9', '1977', 'Soft Rock'),
('Meat Loaf', 'Bat Out of Hell', '20.6', '1977', 'Hard Rock'),
('Michael Jackson', 'Thriller', '42.4', '1982', 'Pop'),
('Pink Floyd', 'The Dark Side of the Moon', '22.7', '1973', 'Progressive Rock'),
('Whitney Houston', 'The Bodyguard', '27.4', '1992', 'Soundtrack');