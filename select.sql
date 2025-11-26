update song
set duration_sec = 220
where name = 'Веснушки';

update song
set name = 'My салют'
where id = 60;


select name, duration_sec from song
where duration_sec = (select max(duration_sec )from song);

select name from song
where duration_sec >=(210);

select name from compilation
where year>=2018 and year<=2020;

select nickname from artist
where nickname NOT LIKE '% %' AND nickname  NOT LIKE '%-%';

select name from song
where name like '%My%' or name like '%Мой%';

SELECT name, COUNT(artist_id) artist_q FROM genreartist g
JOIN artist a ON g.artist_id  = a.id
join genre g2 on g.genre_id = g2.id
GROUP BY g2.name
ORDER BY artist_q DESC;

select count(album_id) q from song s
join album a on a.id = s.album_id
where a.year between '2019-01-01' and '2020-12-31';

select a.name album_name, avg(duration_sec)d from album a
join song s on a.id = s.album_id
group by a.name
order by d desc;


select nickname from artistalbum a
join artist a2 on a2.id = a.artist_id
join album a3 on a3.id = a.album_id
where EXTRACT(YEAR FROM a3.year) != 2020;

select c.name from compilation c
join songcompilation s on s.compilation_id = c.id
join song on song.id = s.song_id
join album a on song.album_id = a.id
join artistalbum a2 on a.id = a2.album_id
join artist a3 on a2.artist_id = a3.id
where a3.nickname = 'MACAN';

select a.name from artistalbum aa
join album a on a.id = aa.album_id
join artist ar on ar.id = aa.artist_id
join genreartist ga on ga.artist_id = aa.artist_id
group by a.name
having (count(distinct ga.artist_id))>1;

insert into song(id, album_id,name, duration_sec)
values (70, 4, 'Девочка-пай', 260);

select s.name from song s
left join songcompilation s2 on s.id = s2.song_id
where s2.song_id is null;

select ar.nickname from artistalbum a
join artist ar on ar.id = a.artist_id
join song s on s.album_id = a.album_id
where s.duration_sec = (select min(duration_sec) from song)
group by ar.nickname;

select al.name from song s
join album al on al.id = s.album_id
group by al.name
having count(s.album_id) = (select min(s_count)
from(SELECT COUNT(s.album_id) as s_count
        FROM album al
        JOIN song s ON al.id = s.album_id
        GROUP BY al.id)al_songs);



