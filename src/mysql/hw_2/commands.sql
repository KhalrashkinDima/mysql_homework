-- Создание базы данных
CREATE DATABASE hw_2
--Создание таблицы пользователей 
CREATE TABLE users ( id int AUTO_INCREMENT NOT null, 
                    first_name varchar(50), 
                    last_name varchar(50), 
                    nickname varchar(50),
                    email varchar(50),               
                    PRIMARY KEY(id) 
                    );
--Создание таблицы постов
CREATE TABLE posts ( id int AUTO_INCREMENT NOT NULL,
                    user_id int,
                    title varchar(100),
                    main_text LONGTEXT,
                    count int DEFAULT '0',
                    created timestamp DEFAULT GETDATE(),
                    url varchar(100),
                    FOREIGN KEY (user_id) REFERENCES users(id),
                   );
--Создание таблицы комментариев
CREATE TABLE comments (id int AUTO_INCREMENT NOT NULL,
                       user_id int,
                       post_id int,
                       text mediumtext,
                       created timestamp DEFAULT GETDATE(),
                       FOREIGN KEY (user_id) REFERENCES users(id),
                       FOREIGN KEY (post_id) REFERENCES posts(id),
                       PRIMARY KEY (id)
                       );
-- Таблица лайков 
CREATE TABLE likes (user_id int,
                    post_id int,
                    FOREIGN KEY (user_id) REFERENCES users(id),
                    FOREIGN KEY (post_id) REFERENCES posts(id)
                    );
--Таблицы со связями созданы, наполняем таблицы
INSERT INTO users (first_name, last_name, nickname, email)
VALUES ('Дима','Харлашкин','Dimas','dimaharlaskin8@gmail.com'),
('Петр','Половников','Polovnik','polovnik@gmail.com'),
('Василий','Бодоренко','Vas','vasiliy@gmail.com'),
('Кондрат','Бриц','Conbritz','conbritz@gmail.com'),
('Виталик','Сидоренко','Sidr','sidorenko@gmail.com');

INSERT INTO posts (user_id, title, main_text, url)
VALUES (Значения слишком длинные, вам будет неинтересно читать, оставлю пустые поля),
();


--Удалил один из комментариев
DELETE from comments WHERE id=3;

--Удалил все комментарии

DELETE FROM comments;

--Выбрал две колонки из users

SELECT first_name, last_name FROM users;

--Чтобы не было зашкварно сделал весь выбор через перечисление столбцов

SELECT id, first_name, last_name, nickname, email FROM users;

--Обновил значения строчки

UPDATE posts SET count = '100' WHERE user_id = '1';

--Изменил несколько строк 
UPDATE posts SET count = '-100' WHERE user_id > '1';

--Вывел записи по условию, сдержался, звездочку не поставил

SELECT id, first_name, last_name, email FROM users WHERE id > 3;




                
