--1). Количество исполнителей в каждом жанре:

SELECT genre_id, COUNT(singer_id) FROM singer_genre
	GROUP BY genre_id ORDER BY COUNT(singer_id) DESC;

--2). Количество треков, вошедших в альбомы 2019-2020 годов:

SELECT DISTINCT ns.name_song FROM song AS ns
	LEFT JOIN album AS a ON ns.song_id = a.album_id
	WHERE ns.song_id IN(
    SELECT a.album_id FROM album
	WHERE release_date BETWEEN '2018-01-01' AND '2020-12-31');

--3). Средняя продолжительность треков по каждому альбому:

SELECT a.name_album, round(AVG(s.song_duration), 2)
    FROM album a
    JOIN Song s ON a.album_id = s.song_id
    GROUP BY a.name_album

 -- 4). Все исполнители, которые не выпустили альбомы в 2020 году:

SELECT DISTINCT ns.name_singer FROM singer AS ns
	LEFT JOIN album_singer AS al ON ns.singer_id = al.album_id
	LEFT JOIN album AS a ON al.album_id = a.album_id 
	WHERE release_date < '2020-01-01';

-- 5).Названия сборников, в которых присутствует конкретный исполнитель (выберите сами):

SELECT DISTINCT c.name_collection FROM collection AS c
	LEFT JOIN singer AS s ON c.collection_id = s.singer_id
	WHERE s.singer_id = 1;

-- 6). Название альбомов, в которых присутствуют исполнители более 1 жанра:

SELECT DISTINCT a.name_album  FROM album as a
	LEFT join album_singer  AS as2 ON a.album_id = as2.singer_id
	LEFT JOIN singer_genre AS sg ON as2.singer_id = sg.genre_id
	GROUP BY a.album_id 
	HAVING COUNT(sg.singer_id) > 1;

--7).Наименование треков, которые не входят в сборники:

SELECT s.name_song FROM song AS s
	LEFT JOIN song_collection AS sc ON s.song_id = sc.collection_id 
	where s.song_id is null; 

--8). Исполнителя(-ей), написавшего самый короткий по продолжительности трек (теоретически таких треков может быть несколько):

SELECT ns.name_singer, song_duration FROM singer AS ns
	JOIN album_singer AS as1 ON ns.singer_id = as1.album_id
	JOIN album AS a ON as1.album_id = a.album_id 
	JOIN song AS s ON a.album_id = s.song_id
	WHERE s.song_duration = (SELECT MIN(song_duration) FROM song);


--9). Название альбомов, содержащих наименьшее количество треков:

SELECT DISTINCT name_album FROM album AS a
	INNER JOIN song_collection AS t ON a.album_id = t.song_id
	where a.album_id IN(
	SELECT COUNT(album_id) FROM song_collection
	GROUP BY album_id
	ORDER BY album_id
	LIMIT 1);



