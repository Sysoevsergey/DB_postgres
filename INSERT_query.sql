--1
INSERT INTO genres (id, genre_name) 
VALUES (1, 'Rap');

INSERT INTO genres (id, genre_name) 
VALUES (2, 'Latin');

INSERT INTO genres (id, genre_name) 
VALUES (3, 'Rock');

INSERT INTO artists (id, artist_name) 
VALUES (1, 'Pitbull');

INSERT INTO artists (id, artist_name) 
VALUES (2, 'Shakira');

INSERT INTO artists (id, artist_name)  
VALUES (3, 'AC/DC');

INSERT INTO artists (id, artist_name) 
VALUES (4, 'Metallica');

INSERT INTO artists (id, artist_name)  
VALUES (5, 'Snoop Dogg');

INSERT INTO artists (id, artist_name)  
VALUES (6, 'Eminem');

INSERT INTO artists (id, artist_name)  
VALUES (7, 'Dr. Dre');

INSERT INTO albums (id, album_title, album_release)
VALUES(1, 'Climate Change', 2019);

INSERT INTO albums (id, album_title, album_release)
VALUES (2, 'She Wolf', 2021);

INSERT INTO albums (id, album_title, album_release)
VALUES (3, 'Death Magnetic', 2020);

INSERT INTO albums (id, album_title, album_release)
VALUES (4, 'High Voltage', 1976);

INSERT INTO albums (id, album_title, album_release)
VALUES (5, 'Doggystyle', 1993);

INSERT INTO albums (id, album_title, album_release)
VALUES (6, 'The Slim Shady LP', 1999);

INSERT INTO albums (id, album_title, album_release)
VALUES (7, 'The Chronic', 1992);

INSERT INTO songs (id, album_id, song_title, song_duration) 
VALUES (1, 1, 'Bad Man', 3.35);

INSERT INTO songs (id, album_id, song_title, song_duration)  
VALUES (2, 1, 'Freedom', 2.55);

INSERT INTO songs (id, album_id, song_title, song_duration)  
VALUES (3, 2, 'She Wolf', 3.1);

INSERT INTO songs (id, album_id, song_title, song_duration)  
VALUES (4, 2, 'Gypsy', 3.18);

INSERT INTO songs (id, album_id, song_title, song_duration)   
VALUES (5, 2, 'Mon Amour', 4.06);

INSERT INTO songs (id, album_id, song_title, song_duration)  
VALUES (6, 3, 'The Jack', 5.52);

INSERT INTO songs (id, album_id, song_title, song_duration)   
VALUES (7, 3, 'Little Lover', 5.37);

INSERT INTO songs (id, album_id, song_title, song_duration)  
VALUES (8, 3, 'She''s Got Balls', 4.51);

INSERT INTO songs (id, album_id, song_title, song_duration) 
VALUES (9, 4, 'Cyanide', 6.39);

INSERT INTO songs (id, album_id, song_title, song_duration) 
VALUES (10, 4, 'My Apocalypse', 5.01);

INSERT INTO songs (id, album_id, song_title, song_duration)  
VALUES (11, 5, 'Murder Was the Case', 3.38);

INSERT INTO songs (id, album_id, song_title, song_duration)  
VALUES (12, 5, 'Who Am I (What''s My Name)?', 4.06);

INSERT INTO songs (id, album_id, song_title, song_duration)   
VALUES (13, 5, 'For All My Niggaz & Bitches', 4.43);

INSERT INTO songs (id, album_id, song_title, song_duration) 
VALUES (14, 6, 'My Name Is', 4.28);

INSERT INTO songs (id, album_id, song_title, song_duration)   
VALUES (15, 6, 'I''m Shady', 3.31);

INSERT INTO songs (id, album_id, song_title, song_duration) 
VALUES (16, 7, 'Fuck wit Dre Day(Snoop Dogg) ', 4.52);

INSERT INTO songs (id, album_id, song_title, song_duration)  
VALUES (17, 7, 'Let Me Ride(Snoop Doog)', 4.21);

INSERT INTO songs (id, album_id, song_title, song_duration)  
VALUES (18, 7, 'High Powered', 2.44);

INSERT INTO collections (id, collection_name, collection_release) 
VALUES (1, 'Collection_1', 2019);

INSERT INTO collections (id, collection_name, collection_release)  
VALUES (2, 'Collection_2', 2020);

INSERT INTO collections (id, collection_name, collection_release) 
VALUES (3, 'Collection_3', 2015);

INSERT INTO collections (id, collection_name, collection_release) 
VALUES (4, 'Collection_4', 2012);

INSERT INTO genres_artists (id, artist_id, genre_id)
VALUES (1, 1, 1);

INSERT INTO genres_artists (id, artist_id, genre_id)
VALUES (2, 1, 2);

INSERT INTO genres_artists (id, artist_id, genre_id)
VALUES (3, 2, 2);

INSERT INTO genres_artists (id, artist_id, genre_id)
VALUES (4, 3, 3);

INSERT INTO genres_artists (id, artist_id, genre_id)
VALUES (5, 4, 3);

INSERT INTO genres_artists (id, artist_id, genre_id)
VALUES (6, 5, 1);

INSERT INTO genres_artists (id, artist_id, genre_id)
VALUES (7, 6, 1);

INSERT INTO genres_artists (id, artist_id, genre_id)
VALUES (8, 7, 1);

INSERT INTO artists_albums (id, artist_id, album_id)
VALUES (1, 1, 1);

INSERT INTO artists_albums (id, artist_id, album_id)
VALUES (2, 2, 2);

INSERT INTO artists_albums (id, artist_id, album_id)
VALUES (3, 3, 3);

INSERT INTO artists_albums (id, artist_id, album_id)
VALUES (4, 4, 4);

INSERT INTO artists_albums (id, artist_id, album_id)
VALUES (5, 5, 5);

INSERT INTO artists_albums (id, artist_id, album_id)
VALUES (6, 6, 6);

INSERT INTO artists_albums (id, artist_id, album_id)
VALUES (7, 7, 7);

INSERT INTO songs_collections (song_id, collection_id)
VALUES (1, 1);

INSERT INTO songs_collections (song_id, collection_id)
VALUES (2, 1);

INSERT INTO songs_collections (song_id, collection_id)
VALUES (3, 1);

INSERT INTO songs_collections (song_id, collection_id)
VALUES (4, 1);

INSERT INTO songs_collections (song_id, collection_id)
VALUES (12, 1);

INSERT INTO songs_collections (song_id, collection_id)
VALUES (15, 1);

INSERT INTO songs_collections (song_id, collection_id)
VALUES (3, 2);

INSERT INTO songs_collections (song_id, collection_id)
VALUES (11, 2);

INSERT INTO songs_collections (song_id, collection_id)
VALUES (13, 2);

INSERT INTO songs_collections (song_id, collection_id)
VALUES (16, 2);

INSERT INTO songs_collections (song_id, collection_id)
VALUES (18, 2);

INSERT INTO songs_collections (song_id, collection_id)
VALUES (6, 3);

INSERT INTO songs_collections (song_id, collection_id)
VALUES (8, 3);

INSERT INTO songs_collections (song_id, collection_id)
VALUES (10, 3);

INSERT INTO songs_collections (song_id, collection_id)
VALUES (18, 3);

INSERT INTO songs_collections (song_id, collection_id)
VALUES (1, 4);

INSERT INTO songs_collections (song_id, collection_id)
VALUES (5, 4);

INSERT INTO songs_collections (song_id, collection_id)
VALUES (10, 4);

INSERT INTO songs_collections (song_id, collection_id)
VALUES (14, 4);