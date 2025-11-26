
insert into Artist (id, fio, nickname)
values (11,'Погорелов Игорь', 'Гарик Погорелов');

insert into Artist (id, fio, nickname)
values (22,'Косолапов Андрей', 'MACAN');

insert into Artist (id, fio, nickname)
values (33,'Сафонова Анна', 'SCIRENA');

insert into Artist (id, fio, nickname)
values (44,'Воробьев Михаил Владимирович', 'Михаил Круг');

insert into Artist (id, fio, nickname)
values (55,'Николаенко Юрий Андреевич', 'NЮ');

insert into Genre (id,name)
values (5,'Pop');

insert into Genre (id,name)
values (1,'Pop-Rock');

insert into Genre (id,name)
values (2,'Rap');

insert into Genre (id,name)
values (4,'Шансон');

insert into Genre (id,name)
values (3,'Rock');

insert into GenreArtist(genre_id, artist_id)
values(1,11),(5,55),(5,33),(5,22),(5,11),(2,22),(2,33),
(3,22),(3,11),(4,44);

insert into Album(id,name,year)
values(1,'BRATLAND', '2025-01-10'),
(2,'Про Любовь', '2020-02-12'),
(3,'В сердце', '2019-08-09'),
(4,'Михаил Круг Лучшее', '2017-09-12');

insert into ArtistAlbum(artist_id, album_id)
values (11,2),(22,1),(33,1),(44,4),(55,3);


insert into song (id, album_id, name, duration_sec)
values (10,1, 'Знай, знаю', 140),
(20, 2,'О любви', 150),
(30, 1,'Запрещаю забывать',157),
(40, 3,'Веснушки', 180),
(50, 4,'Владимирский централ',185),
(60, 2,'Салют', 170);

insert into compilation (id, name, year)
values (111,'Лучшее за 2024', 2024),
(222,'Популярное Скирена', 2022),
(333,'Полное собрание',2018),
(444,'В акустическом исполнении',2019);

insert into songcompilation (song_id, compilation_id)
values (10,222),(20,333),
(30,444),(40,444),
(50,111),(60,333);