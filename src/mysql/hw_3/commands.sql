-- Создание базы данных

CREATE DATABASE hw_3

--1

SELECT * FROM `users` WHERE `email` LIKE '%@gmail.com';

--2

SELECT `number`, `fio` FROM `certificates` WHERE `year` IS NULL;

--3

UPDATE `certificates` SET `series`='ВН',`number`='225444' WHERE `user_id` = 7

--4

DELETE FROM `users` ORDER BY `id` DESC LIMIT 5

--5

SELECT MIN(`count_students`) FROM `organizations` WHERE `type_id` = 5

--6

SELECT SUM(`rating`) FROM `practise` WHERE `practice_id` = 1888

--7

SELECT COUNT(*) FROM `organizations` 

--8

SELECT * FROM `news` ORDER BY `created_at` DESC LIMIT 5;

--9

SELECT `phones`, `name` FROM `directors` WHERE `organizations` LIKE 'вуз%'

--10

SELECT `surname` FROM `students` WHERE `birthday` LIKE '1995%'

--11

SELECT `publish_date`, `body` FROM `publishes` LIMIT 5

--12

SELECT `region_id`, COUNT(`id`)  FROM `schools` GROUP BY `region_id`;


                
