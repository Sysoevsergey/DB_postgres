--2.1
SELECT song_title, song_duration 
FROM songs
WHERE song_duration = (SELECT MAX(song_duration) FROM songs);
--2.2
SELECT song_title, song_duration
FROM songs
WHERE song_duration > 3.5;
--2.3
SELECT collection_name, collection_release
FROM collections
WHERE collection_release BETWEEN 2018 AND 2020;
--2.4
SELECT artist_name 
FROM artists
WHERE (LENGTH(artist_name)- LENGTH(REPLACE(artist_name, ' ', '')) + 1) < 2;
--2.5
SELECT song_title
FROM songs
WHERE LOWER(song_title) LIKE LOWER('%мой%') OR LOWER(song_title) LIKE LOWER('%my%');
--3.1
SELECT genre_name, COUNT(artist_name) 
FROM genres_artists
LEFT JOIN genres ON genres_artists.genre_id = genres.id
LEFT JOIN artists ON genres.id = artists.id
GROUP BY genre_name
ORDER BY COUNT DESC; 
--3.2
SELECT COUNT(song_title) value, song_title, album_title, album_release  
FROM songs
LEFT JOIN albums ON songs.album_id = albums.id
WHERE album_release BETWEEN '2019' AND '2020'
GROUP BY song_title, album_title, album_release;
--3.3
SELECT DISTINCT album_title, COUNT(song_title) value, CAST(AVG(song_duration) AS DECIMAL(5,2))  
FROM songs
LEFT JOIN albums ON songs.album_id = albums.id
GROUP BY album_title
ORDER BY album_title;
--3.4
SELECT artist_name
FROM artists_albums
LEFT JOIN artists ON artists_albums.artist_id = artists.id 
LEFT JOIN albums ON artists.id = albums.id
WHERE album_release != '2020';
--3.5
SELECT collection_name, artist_name
FROM collections
LEFT JOIN songs_collections ON collections.id = songs_collections.collection_id 
LEFT JOIN songs ON songs_collections.song_id = songs.id
LEFT JOIN albums ON songs.album_id = albums.id
LEFT JOIN artists_albums ON albums.id = artists_albums.album_id
LEFT JOIN artists ON artists_albums.artist_id = artists.id 
WHERE artist_name = 'AC/DC';
--4.1
SELECT albums.album_title,genres_artists.artist_id, artist_name
FROM albums
LEFT JOIN artists_albums ON albums.id = artists_albums.album_id 
LEFT JOIN artists ON artists_albums.artist_id = artists.id 
LEFT JOIN genres_artists ON artists.id = genres_artists.artist_id
LEFT JOIN genres ON genres_artists.genre_id = genres.id
GROUP BY albums.album_title, genres_artists.artist_id, artist_name
HAVING COUNT(*) > 1;
--4.2
SELECT song_title
FROM songs
LEFT JOIN songs_collections ON songs.id = songs_collections.song_id
WHERE songs_collections.song_id IS NULL;
--4.3
SELECT songs.song_title, songs.song_duration
FROM songs
LEFT JOIN albums ON songs.album_id = albums.id
LEFT JOIN artists_albums ON albums.id = artists_albums.album_id  
LEFT JOIN artists ON artists_albums.artist_id = artists.id  
GROUP BY songs.song_title, songs.song_duration
HAVING songs.song_duration = (SELECT MIN(song_duration) FROM songs)
ORDER BY songs.song_title;
