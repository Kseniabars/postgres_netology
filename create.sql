create table if not exists Genre(
	id BIGINT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
	name VARCHAR(70) not null

);
create table if not exists Artist(
	id BIGINT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
	fio VARCHAR(150) not null,
	nickname VARCHAR(150)
);
create table if not exists Album(
	id BIGINT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
	name VARCHAR(70) not null,
	year DATE
);
create table if not exists Song(
	id BIGINT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
	album_id BIGINT references Album(id),
	name VARCHAR(70) not null,
	duration_sec INT not null,
 		CHECK (duration_sec>=15 AND duration_sec<=3600)
);
create table if not exists Compilation(
	id BIGINT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
	name VARCHAR(100),
	year INTEGER
);

create table if not exists SongCompilation (
    song_id BIGINT references Song(id),
	compilation_id BIGINT references Compilation(id),
	CONSTRAINT sc PRIMARY KEY (song_id, compilation_id)
);
create table if not exists GenreArtist (
	genre_id BIGINT references Genre(id),
	artist_id BIGINT references Artist(id),
	CONSTRAINT ga PRIMARY KEY (genre_id, artist_id)
);

create table if not exists ArtistAlbum (
	artist_id BIGINT references Artist(id),
	album_id BIGINT references Album(id),
	CONSTRAINT aa PRIMARY KEY (artist_id, album_id)
);