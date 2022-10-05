-- Название и год выхода альбомов, вышедших в 2018 году;
SELECT  name_album, release_date FROM album
WHERE release_date BETWEEN '2018-01-01' AND '2018-12-31'

-- Название и продолжительность самого длительного трека;
SELECT name_song, song_duration FROM song
WHERE song_duration=(SELECT MAX(song_duration) FROM song);

-- Название треков, продолжительность которых не менее 3,5 минуты
select name_song, song_duration FROM song
WHERE song_duration >= 210;

-- Названия сборников, вышедших в период с 2018 по 2020 год включительно;
SELECT name_collection, release_date FROM collection
WHERE release_date BETWEEN '2018-01-01' AND '2020-12-31';

-- Исполнители, чье имя состоит из 1 слова;
SELECT name_singer from singer
WHERE name_singer NOT LIKE '%% %%';

-- Название треков, которые содержат слово "мой"/"my".
SELECT name_song FROM song
WHERE name_song LIKE '%%my%%';

