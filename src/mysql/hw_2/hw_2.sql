-- phpMyAdmin SQL Dump
-- version 4.7.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Фев 10 2022 г., 16:22
-- Версия сервера: 5.6.37
-- Версия PHP: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `hw_2`
--

-- --------------------------------------------------------

--
-- Структура таблицы `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `text` mediumtext,
  `comment_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `comments`
--

INSERT INTO `comments` (`id`, `user_id`, `post_id`, `text`, `comment_date`) VALUES
(1, 1, 3, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum', '2022-02-10 09:21:42'),
(2, 3, 2, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum', '2022-02-10 09:21:42'),
(3, 2, 4, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum', '2022-02-10 09:21:42'),
(4, 5, 3, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum', '2022-02-10 09:21:42'),
(5, 3, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum', '2022-02-10 09:21:42'),
(6, 1, 2, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum', '2022-02-10 09:21:42'),
(7, 2, 3, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum', '2022-02-10 09:21:42'),
(8, 3, 4, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum', '2022-02-10 09:21:42');

-- --------------------------------------------------------

--
-- Структура таблицы `likes`
--

CREATE TABLE `likes` (
  `user_id` int(11) DEFAULT NULL,
  `post_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `likes`
--

INSERT INTO `likes` (`user_id`, `post_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(3, 1),
(3, 2),
(3, 3),
(4, 2),
(2, 4),
(2, 5);

-- --------------------------------------------------------

--
-- Структура таблицы `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `main_text` longtext,
  `count` int(11) DEFAULT '0',
  `created` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `url` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `title`, `main_text`, `count`, `created`, `url`) VALUES
(1, 1, 'Гранаты на фонарных столбах в Одесской области оказались муляжами: за дело взялась полиция', 'В городе Белгород-Днестровский Одесской области местный житель прикрепил к электрическим опорам два муляжа боевых гранат, чтобы уберечь камеры наб людения.Об этом сообщили в Белгород-Днестровском отделе полиции.Ранее сегодня в сети появилась видеозапись, на котором видны якобы гранаты на электроопорах в городе Белгород-Днестровский.Полиция, к которой обратился автор видео, выяснила, что это - муляжи. А повесил их хозяин дома рядом. Он установил на столбах две камеры видеонаблюдения, а, чтобы не украли их, прикрепил к ним муляжи гранат, приобретенные на рынке.Указанные сведения зарегистрированы в журнал единого учета Белгород-Днестровского районного отдела полиции. Правоохранители устанавливают обстоятельства происшествия и решают вопрос о его квалификации.', 100, '2022-02-10 05:22:23', 'https://images.unian.net/photos/2022_01/1643534062-8466.png?0.6476270397840636'),
(2, 3, 'Лига чемпионов против \"Лиги шампиньонов\": в УЕФА отказались от претензий к пиццерии', 'В УЕФА назвали чрезмерно усердной работой решение представителей их организации обратиться в суд из-за названия пиццы в немецкой пиццерии. Об этом идет речь в заявлении УЕФА, которое цитирует журналист Мартин Зиглер на свой странице в Twitter.\"Очевидно, что некоторые люди раздувают из этого трагедию. Похоже, это случай чрезмерно усердной работы агента по товарным знакам, который действует поспешно. Лига чемпионов может счастливо существовать рядом с этой восхитительно звучащей пиццей\", — говорится в сообщении.Речь идет об иске к небольшой пиццерии в Германии под названием Pizza Wolke. Их грибная пицца получила название \"Лига шампиньонов\" (Champignons League), что созвучно с названием турнира, проводимого под эгидой УЕФА — Лига чемпионов (Champions League).Юристы Союза европейских футбольных ассоциаций (УЕФА) обратились к представителям пиццерии после того, как те подали заявку на регистрацию товарного знака. Пиццерии пригрозили иском в случае, если до 28 января пиццу с названием \"Лига шампиньонов\" не перестанут продавать. Фото обращения пиццерия поделилась в соцсетях.', -100, '2022-02-09 04:16:14', 'https://images.unian.net/photos/2022_02/1643830624-5630.jpg?0.2784474919582203'),
(3, 4, 'Американка успела съесть полтора килограмма салата за 10 минут', 'Американка в конкурсе по поеданию салата обошла сразу двух гигантских кроликов. Девушка за 10 минут съела полтора килограмма салата.\n\nОб этом говорится в сюжете ТСН.\n\nСоревнование проводил калифорнийский магазин, который специализируется на здоровой еде. 27-летней американке предложили сначала посоревноваться с гигантским кролем по прозвищу Хани Банни, кто быстрее съест порцию зелени.\n\nДевушка так быстро ела салат, что на подмогу Хани Банни привели еще одного кролика, но это ситуацию не спасло. Жительница США съела полтора килограмма салата за 10 минут и выиграла соревнование.', -100, '2022-02-09 09:11:12', 'https://images.unian.net/photos/2018_05/1525350686-1979.jpg?0.35602304915850214'),
(4, 2, 'Жительница Новой Зеландии выставила на аукцион своего мужа после того, как он уехал на рыбалку, оста', 'Разозлилась и отомстила: в Новой Зеландии женщина выставила на аукцион своего мужа', -100, '2022-02-10 04:27:00', 'https://images.unian.net/photos/2022_02/1644084747-5566.jpg?0.7386541045396431'),
(5, 3, 'Гендерная афера: швейцарец сменил пол в документах, чтобы быстрее выйти на пенсию', 'Житель города Люцерн (Швейцария) официально сменил пол на женский, чтобы на год быстрее выйти на пенсию. Правда, женщиной он стал только на бумагах.\n\nОб этом сообщает Remix News.\n\nС начала 2022 года в Швейцарии вступил в силу закон, который значительно упрощает процедуру смены пола в документах. Каждый желающий может сделать это с минимальными затратами. Этой возможностью и воспользовался мужчина.\n\nДля того, чтобы сменить пол в документах, необходимо только прийти в ЗАГС, подать заявку и заплатить административный сбор в размере 75 швейцарских франков (80 долларов или 2300 гривен). Ранее для осуществления такой процедуры нужно было пройти медицинскую диагностику, гормональную терапию и предъявить справку от врача.\n\nМужчина усмотрел собственную выгоду в новых правилах. Он подал заявку на смену пола для того, чтобы раньше выйти на пенсию. \n\nВ Швейцарии пенсионный возраст для женщин составляет 64 года, а для мужчин – 65. Очевидно, мужчина решил уйти на отдых на год быстрее. Главное, что он сделал это вполне легально.\n\nПеред сменой пола мужчина прошел короткое собеседование и заплатил необходимую сумму. Госслужащие не обязаны проверять \"глубокие убеждения\" людей, которые хотят сменить пол. Они могут отказать только если заявитель во время собеседования прямо скажет, что хочет изменить документы для шутки или с мошеннической целью.\n\nПоскольку мужчина, о котором идет речь, в этом не признался, ему действительно изменили пол в документах. Следовательно, швейцарец может абсолютно законно претендовать на пенсионные выплаты.\",\r\n     ', 0, '2022-02-10 11:47:40', 'https://images.unian.net/photos/2022_01/1643646063-2208.jpg?0.753481626173633'),
(6, 2, 'Разозлилась и отомстила: в Новой Зеландии женщина выставила на аукцион своего мужа', 'Жительница Новой Зеландии выставила на аукцион своего мужа после того, как он уехал на рыбалку, оставив ее с детьми во время школьных каникул.\n\nОб этом сообщает Independent.\n\nЛинда Макалистер и ее муж Джон поженились в 2019 году. Пара воспитывает двух сыновей: 4-летнего Кольта и 6-летнего Райдера. \n\nНедавно во время школьных каникул муж уехал на рыбалку, оставив Линду с сыновьями дома. Поступок мужа не на шутку ее разозлил, поэтому она решилась прибегнуть к радикальным мерам.\n\nЖенщина решила выставить на продажу мужа в онлайн-аукционе TradeMe. \n\n\"Продается муж. Рост - 184 сантиметра. Возраст - 37 лет. Любит охоту и рыбалку, увлекается фермерством. Возможно, бывает тревожным в незнакомой обстановке, но умеет успокаиваться самостоятельно. Легкий в управлении. Имел нескольких владельцев. Обмену и возврату не подлежит\", - написала женщина в графе \"Описание товара\".\n\nОднако выходка женщины даже понравилась Джону. Он активно следил за торгами, ведь был уверен, что за него отдадут немалые деньги. Впрочем, за лот были готовы отдать чуть больше, чем 70 долларов. Через некоторое время объявление исчезло с платформы за нарушение правил.\n\nМенеджер TradeMe по соблюдению политики сайта Джеймс Райан заявил, что у них впервые пытались продать мужа.\",\r\n  ', 0, '2022-02-10 11:47:40', 'https://images.unian.net/photos/2022_02/1644084747-5566.jpg?0.7386541045396431');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `nickname` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `nickname`, `email`) VALUES
(1, 'Дима', 'Харлашкин', 'Dimas', 'dimaharlaskin8@gmail.com'),
(2, 'Петр', 'Половников', 'Polovnik', 'polovnik@gmail.com'),
(3, 'Василий', 'Бодоренко', 'Vas', 'vasiliy@gmail.com'),
(4, 'Кондрат', 'Бриц', 'Conbritz', 'conbritz@gmail.com'),
(5, 'Виталик', 'Сидоренко', 'Sidr', 'sidorenko@gmail.com');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `post_id` (`post_id`);

--
-- Индексы таблицы `likes`
--
ALTER TABLE `likes`
  ADD KEY `user_id` (`user_id`),
  ADD KEY `post_id` (`post_id`);

--
-- Индексы таблицы `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT для таблицы `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `comments_ibfk_2` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`);

--
-- Ограничения внешнего ключа таблицы `likes`
--
ALTER TABLE `likes`
  ADD CONSTRAINT `likes_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `likes_ibfk_2` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`);

--
-- Ограничения внешнего ключа таблицы `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
