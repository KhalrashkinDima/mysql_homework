--1
SELECT genres.name FROM genres LEFT JOIN books ON genres.id = books.genres_id WHERE books.genres_id IS NULL
--2
SELECT users.surname, users.name, areas.name FROM users INNER JOIN areas ON users.area_id = areas.id ORDER BY areas.name LIMIT 4
--3
SELECT category.name,  COUNT(news.id) FROM category INNER JOIN news ON category.news_id = news.id GROUP BY category.name
--4
SELECT cities.name, areas.name FROM cities INNER JOIN areas ON cities.area_id = areas.id ORDER BY areas.name
--5
SELECT schools.name, districts.name FROM schools INNER JOIN districts ON schools.district_id = districts.id ORDER BY district.name