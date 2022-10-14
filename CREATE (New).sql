create table if not exists genre(
	genre_id SERIAL PRIMARY key,
	name_genre VARCHAR(40) not null
);

create table if not exists singer(
	singer_id SERIAL PRIMARY key,
	name_singer VARCHAR(200) not null
);

create table if not exists singer_genre(
	genre_id INTEGER references genre(genre_id),
	singer_id INTEGER references singer(singer_id),
	constraint pk primary key (genre_id, singer_id )
);

create table if not exists album(
	album_id SERIAL PRIMARY key,
	name_album VARCHAR(100) not null,
	release_date DATE not NULL
);

create table if not exists song (
	song_id SERIAL PRIMARY KEY,
	name_song VARCHAR(60) not null,
	song_duration integer not NULL,
	album_id integer references album(id) 
);


create table if not exists collection(
	collection_id SERIAL PRIMARY key,
	name_collection VARCHAR(100) not null,
	release_date DATE not NULL
);

create table if not exists album_singer (
	album_id INTEGER references album(album_id),
	singer_id INTEGER references singer(singer_id),
	constraint npk primary key (album_id, singer_id )
);

create table if not exists song_collection(
	id serial primary key,
	collection_id integer not null references collection(collection_id),
	album_id integer not null references album(album_id),
	song_id integer not null references song(song_id)
);
