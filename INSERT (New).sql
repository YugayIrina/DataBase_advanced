--	не менее 8 исполнителей:
insert into singer(singer_id, name_singer) 
	values(1, 'Frank Sinatra');
insert into singer(singer_id, name_singer)
	values(2, 'Louis Armstrong');
insert into singer(singer_id, name_singer)
	values(3, 'Eric Clapton');
insert into singer(singer_id, name_singer)
	values (4, 'Madonna');
insert into singer(singer_id, name_singer)
	values(5, 'Michael Jackson');
insert into singer(singer_id, name_singer)
	values(6, '50 Cent');
insert into singer(singer_id, name_singer)
	values(7, 'Jay-Z');
insert into singer(singer_id, name_singer)
	values(8, 'The Beatles');

select * from singer;

--не менее 5 жанров:
insert into genre(genre_id, name_genre)
	VALUES(1, 'jazz');
insert into genre(genre_id, name_genre)
	VALUES(2, 'blues');
insert into genre(genre_id, name_genre)
	VALUES(3, 'pop');
insert into genre(genre_id, name_genre)
	VALUES(4, 'rap');
insert into genre(genre_id, name_genre)
	VALUES(5, 'rock');

select * from genre;

--не менее 8 альбомов:
insert into album(album_id, name_album, release_date)
values(1, 'Christmas', '03.11.1975');
insert into album(album_id, name_album, release_date)
values(2, 'Pure Gold', '23.12.2005');
insert into album(album_id, name_album, release_date)
values(3, 'Crossroads', '15.07.1988');
insert into album(album_id, name_album, release_date)
values (4, 'Celebration', '18.09.2019');
insert into album(album_id, name_album, release_date)
values(5, 'Dangerous', '28.08.1991');
insert into album(album_id, name_album, release_date)
values(6, 'Curtis', '10.01.2019');
insert into album(album_id, name_album, release_date)
values(7, 'The Black Album', '18.05.2020');
insert into album(album_id, name_album, release_date)
values(8, 'Love', '06.10.2020');

select * from album;

--не менее 15 треков:
insert into song(song_id, name_song, song_duration)
	values(1, 'Silent Night', 149);
insert into song(song_id, name_song, song_duration)
	values(2, 'White Christmas', 200);
insert into song(song_id, name_song, song_duration)
	values(3, 'Cabaret', 169);
insert into song(song_id, name_song, song_duration)
	values (4, 'Moon River', 137);
insert into song(song_id, name_song, song_duration)
	values(5, 'For my love', 148);
insert into song(song_id, name_song, song_duration)
	values(6, 'Lonely Years', 197);
insert into song(song_id, name_song, song_duration)
	values(7, 'Hung Up', 336);
insert into song(song_id, name_song, song_duration)
	values(8, 'Holiday', 368);
insert into song(song_id, name_song, song_duration)
	values (9, 'Jam', 190);
insert into song(song_id, name_song, song_duration)
	values(10, 'It’s my life', 260);
insert into song(song_id, name_song, song_duration)
	values(11, 'Movin On Up', 204);
insert into song(song_id, name_song, song_duration)
	values (12, 'I get money', 226);
insert into song(song_id, name_song, song_duration)
	values(13, '99 Problems', 234);
insert into song(song_id, name_song, song_duration)
	values(14, 'Threat', 245);
insert into song(song_id, name_song, song_duration)
	values(15, 'Get back', 125);
insert into song(song_id, name_song, song_duration)
	values(16, 'Because', 164);

select * from song;

--не менее 8 сборников:
INSERT INTO
	collection(collection_id, name_collection, release_date)
values
    (1, 'The Best collection', '2022-03-12'),
    (2, 'Love song collection', '2021-12-20'),
    (3, 'Star collection', '2018-08-10'),
    (4, 'Happy collection', '2019-11-15'),
    (5, 'Moonlight collection', '2020-07-23'),
    (6, 'Christmas collection', '2002-06-11'),
    (7, 'Life collection', '2018-03-10'),
    (8, 'Celebrity collection', '2020-09-17');

 --Таблицаа-связь album_singer:
insert into album_singer(album_id, singer_id)
	values(1, 1);
insert into album_singer(album_id, singer_id)
	values(2, 2);
insert into album_singer(album_id, singer_id)
	values(3, 3);
insert into album_singer(album_id, singer_id)
	values(4, 4);	
insert into album_singer(album_id, singer_id)
	values(5, 5);
insert into album_singer(album_id, singer_id)
	values(6, 6);
insert into album_singer(album_id, singer_id)
	values(7, 7);
insert into album_singer(album_id, singer_id)
	values(8, 8);

--Таблицаа-связь singer_genre:
insert into singer_genre(singer_id, genre_id)
	values(1, 1);
insert into singer_genre(singer_id, genre_id)
	values(2, 1);
insert into singer_genre(singer_id, genre_id)
	values(3, 2);
insert into singer_genre(singer_id, genre_id)
	values(4, 3);	
insert into singer_genre(singer_id, genre_id)
	values(5, 3);
insert into singer_genre(singer_id, genre_id)
	values(6, 4);
insert into singer_genre(singer_id, genre_id)
	values(7, 4);
insert into singer_genre(singer_id, genre_id)
	values(8, 5);

--Таблицаа-связь song_collection:
insert into song_collection(collection_id, album_id, song_id)
	values(1, 1, 2);
insert into song_collection(collection_id, album_id, song_id)
	values(2, 3, 1);
insert into song_collection(collection_id, album_id, song_id)
	values(3, 2, 2);
insert into song_collection(collection_id, album_id, song_id)
	values(4, 5, 1);
insert into song_collection(collection_id, album_id, song_id)
	values(5, 4, 1);
insert into song_collection(collection_id, album_id, song_id)
	values(6, 7, 2);
insert into song_collection(collection_id, album_id, song_id)
	values(7, 6, 1);
insert into song_collection(collection_id, album_id, song_id)
	values(8, 8, 2);
