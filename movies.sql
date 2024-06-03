-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Июн 3 2024 г., 12:57
-- Версия сервера: 10.4.28-MariaDB
-- Версия PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";



/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `kinobasa`
--

-- --------------------------------------------------------

--
-- Структура таблицы `movies`
--

CREATE TABLE `movies` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `rating` decimal(3,1) NOT NULL,
  `year` int(11) NOT NULL,
  `director` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `review` text DEFAULT NULL,
  `image_address` varchar(255) DEFAULT NULL,
  `video_link` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `movies`
--

INSERT INTO `movies` (`id`, `title`, `rating`, `year`, `director`, `description`, `review`, `image_address`, `video_link`) VALUES
(1, 'Матрица', 8.9, 2002, 'Лана Вачовски, Лилли Вачовски', '«Ма́трица» — американская научно-фантастическая медиафраншиза в жанре киберпанк. Началась с Фильма 1999 Года «Матрица», написанного и снятого братьями Ларри и Энди Вачовски и спродюсированного Джоэлем Сильвером. Позднее, в 2003 Году, вышло два продолжения: «Матрица: Перезагрузка» и «Матрица: Революция». ', 'Великолепный научно-фантастический Фильм, перевернувший представление о виртуальной реальности и киберпространстве. Отличный сюжет, потрясающие визуальные эффекты, идеально подобранный каст. Один из тех Фильмов, которые оставляют глубокий след в истории кинематографа.', '/KinoBaza_PHP/assets/img/matrix.png', 'https://www.youtube.com/embed/8qB8EGNOtr8'),
(2, 'Безумный макс', 8.9, 2015, 'Джордж Миллер', 'Вскоре после отмщения за смерть жены и сына, Макс Рокатански покинул ряды «Основного силового патруля» и уехал в глушь, где скитается в одиночестве, пока мир медленно падает впоследствии нефтяного кризиса и глобальной войны. Не имея ничего, кроме своей машины «Перехватчик», Максу предстоит научиться, как выжить в пост-апокалиптической пустоши и сражаться с жестокими, безжалостными воинами, которые населяют её.', 'Великолепный пост-апокалиптический боевик, визуально потрясающий и напряженный до последней минуты. Отличная режиссура Джорджа Миллера и захватывающая игра Тома Харди. Фильм, который не оставит равнодушным любителя адреналина и качественных экшенов.', '/KinoBaza_PHP/assets/img/max.png\r\n', 'https://www.youtube.com/embed/an_MiUmpgs0'),
(3, 'Интерстеллар', 8.9, 2015, 'Кристофер Нолан', 'Когда засуха приводит человечество к продовольственному кризису, коллектив исследователей и учёных отправляется сквозь червоточину (которая предположительно соединяет области пространства-времени через большое расстояние) в путешествие, чтобы превзойти прежние ограничения для космических путешествий человека и переселить человечество на другую планету.', 'Интерстеллар - это великолепная кинематографическая одиссея, затрагивающая не только темы космоса и времени, но и человеческих чувств. Мастерская режиссура Кристофера Нолана, потрясающая музыка Ханса Циммера и захватывающая игра актеров создают шедевр, который оставляет глубокий след в сердцах зрителей.', '/KinoBaza_PHP/assets/img/inter.png', 'https://www.youtube.com/embed/R5KHoE_8dgo?showinfo=0'),
(4, 'Облачный атлас', 8.9, 2012, 'Том Тиквер, Энди Вачовски, Лана Вачовски', '«Облачный атлас» подобен зеркальному лабиринту, в котором перекликаются, наслаиваясь друг на друга, шесть голосов: нотариуса середины девятнадцатого века, возвращающегося в США из Австралии; молодого композитора, вынужденного торговать душой и телом в Европе между мировыми войнами; журналистки в Калифорнии 1970-х, раскрывающей корпоративный заговор; мелкого издателя — нашего современника, умудрившегося сорвать банк на бандитской автобиографии «Удар кастетом» и бегущего от кредиторов; клона-прислуги из предприятия быстрого питания в Корее — стране победившего киберпанка; и гавайского козопаса на закате цивилизации.', '«Облачный атлас» — это потрясающий Фильм, который несет на себе глубокий смысл и показывает, как разные жизни и судьбы переплетаются в единый художественный полотенце. Режиссеры Том Тиквер и братья и сестры Вачовски создали шедевр, который заставляет задуматься о взаимосвязи всего сущего. Визуальное исполнение, сценарий и актерская игра на высшем уровне. Один из тех Фильмов, которые оставляют незабываемое впечатление.', '/KinoBaza_PHP/assets/img/cloud.png', 'https://www.youtube.com/embed/K2VtiZSvwuo?showinfo=0'),
(5, 'Секретные материалы', 8.9, 1993, 'Дэвид Духовны, Винс Гиллиган, Крис Картер', '«Секре́тные материа́лы» — американский научно-фантастический телеСериал, созданный Крисом Картером. Показ стартовал 10 сентября 1993 Года и завершился 21 марта 2018 Года. За это время были сняты 218 серий', '«Секретные материалы» — это культовый телеСериал, который завоевал миллионы поклонников по всему миру. Загадочные дела, паранормальные явления и динамичный дуэт Фокса Малдера и Даны Скалли — все это делает Сериал увлекательным и захватывающим. Блестящая режиссура, интересные сюжеты и харизматичные персонажи делают «Секретные материалы» неповторимым. Сериал, который оставляет след в истории научной фантастики.', '/KinoBaza_PHP/assets/img/xfiles.png', 'https://www.youtube.com/embed/3oOAMoAKdMo?showinfo=0'),
(6, 'Силиконовая долина', 8.9, 2014, 'Майк Джадж, Алек Берг, Джон Олтшулер', '«Кремниевая долина» — американский ситком, созданный Дэйвом Крински, Джоном Альтшулером и Майком Джаджем о бизнесе в кремниевой долине. Премьера телеСериала состоялась 6 апреля 2014 Года на телеканале HBO.', '«Силиконовая долина» — это увлекательный ситком, который смешивает в себе юмор и остроумие с порой жесткой реальностью IT-индустрии. Отличный взгляд на бизнес в Кремниевой долине через призму гениальных, но эксцентричных предпринимателей. Отличная игра актеров, забавные сюжеты и шарм этого Сериала заставляют задуматься о том, что на самом деле происходит в мире технологий.', '/KinoBaza_PHP/assets/img/silicon.png', 'https://www.youtube.com/embed/L9hcL46yUOo?showinfo=0'),
(7, 'Ходячие мертвецы', 8.9, 2010, 'Фрэнк Дарабонт', '«Ходя́чие мертвецы́» — американский постапокалиптический телеСериал, разработанный Фрэнком Дарабонтом и основанный на одноимённой серии комиксов, созданной Робертом Киркманом, Тони Муром и Чарли Адлардом. В центре сюжета небольшая группа людей, пытающихся выжить во время зомби-апокалипсиса.', '«Ходя́чие мертвецы́» — это захватывающий телеСериал, который привнес свежий взгляд в жанр зомби-апокалипсиса. Зрители следят за судьбой выживших в мире, где каждый шаг может быть последним. Отличный сюжет, напряженная атмосфера и мастерская игра актеров делают этот Сериал одним из лучших в своем жанре. Фрэнк Дарабонт создал удивительный мир, полный опасности и надежды.', '/KinoBaza_PHP/assets/img/dead.png', 'https://www.youtube.com/embed/Qw7gqcIc1BQ?showinfo=0'),
(8, 'Во все тяжкие', 8.9, 2008, 'Винс Гиллиган, Мойра Уолли-Бекетт, Питер Гулд', '«Во все тяжкие» — американская телевизионная криминальная драма, премьерные серии которой транслировались с 20 января 2008 Года по 29 сентября 2013 Года по кабельному каналу AMC.', '«Во все тяжкие» — это настоящий шедевр в мире телевизионных Сериалов. Бриллиантный сценарий, отличная режиссура и потрясающая актерская игра, особенно Брайана Крэнстона в роли Уолтера Уайта, создают уникальную атмосферу. Сериал, который заставляет задуматься о моральных дилеммах и последствиях принимаемых решений. Неизменно Входит в списки лучших Сериалов всех времен.', '/KinoBaza_PHP/assets/img/breakingbad.png', 'https://www.youtube.com/embed/L5l3vv9n7EU?showinfo=0');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `movies`
--
ALTER TABLE `movies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
