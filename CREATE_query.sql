CREATE TABLE IF NOT EXISTS genres (
	id SERIAL PRIMARY KEY,
	genre_name VARCHAR(80) UNIQUE
);
CREATE TABLE IF NOT EXISTS artists (
	id SERIAL PRIMARY KEY,
	artist_name VARCHAR(80) NOT NULL
);
CREATE TABLE IF NOT EXISTS genres_artists (
	id SERIAL PRIMARY KEY,
	artist_id SERIAL REFERENCES artists(id),
	genre_id SERIAL REFERENCES genres(id)
);
CREATE TABLE IF NOT EXISTS albums (
	id SERIAL PRIMARY KEY,
	album_title VARCHAR(80) NOT NULL,
	album_release INT NOT NULL
);
CREATE TABLE IF NOT EXISTS artists_albums (
	id SERIAL PRIMARY KEY,
	artist_id SERIAL REFERENCES artists(id),
	album_id SERIAL REFERENCES albums(id)
);
CREATE TABLE IF NOT EXISTS songs (
	id SERIAL PRIMARY KEY,
	album_id SERIAL REFERENCES albums(id),
	song_title VARCHAR(80) NOT NULL,
	song_duration FLOAT
);
CREATE TABLE IF NOT EXISTS collections (
	id SERIAL PRIMARY KEY,
	collection_name VARCHAR(80) NOT NULL,
	collection_release INT NOT NULL
);
CREATE TABLE IF NOT EXISTS songs_collections (
	id SERIAL PRIMARY KEY,
	song_id SERIAL REFERENCES songs(id),
	collection_id SERIAL REFERENCES collections(id)
);