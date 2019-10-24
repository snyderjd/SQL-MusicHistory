-- 3. Using the INSERT statement, add one, or more, albums by your artist to the Album table.
--INSERT INTO Album (Title, ReleaseDate, AlbumLength, Label, ArtistId, GenreId)
--	VALUES ('We Are Not Your Kind', '2019', 15, 'Acme Records', 1003, 2);
--INSERT INTO Album (Title, ReleaseDate, AlbumLength, Label, ArtistId, GenreId)
--	VALUES ('Iowa', '2001', 17, 'Acme Records', 1003, 2);

--SELECT * FROM Album;

-- 4. Using the INSERT statement, add some songs that are on that album to the Song table.

--SELECT * FROM Album;
--INSERT INTO Song ( Title, SongLength, ReleaseDate, GenreId, ArtistId, AlbumId)
--	VALUES ('Unsainted', 249, '2019', 2, 1003, 1002);
--INSERT INTO Song (Title, SongLength, ReleaseDate, GenreId, ArtistId, AlbumId)
--	VALUES ('Critical Darling', 278, '2019', 2, 1003, 1002);
--INSERT INTO Song (Title, SongLength, ReleaseDate, GenreId, ArtistId, AlbumId)
--	VALUES ('Spiders', 291, '2019', 2, 1003, 1002);

--SELECT * FROM Song;

-- 5. Write a SELECT query that provides the song titles, album title, and artist name for all of the data 
-- you just entered in. Use the LEFT JOIN keyword sequence to connect the tables, and 
-- the WHERE keyword to filter the results to the album and artist you added.

--SELECT
--	s.Title as 'SongTitle',
--	a.Title as 'Album',
--	artist.ArtistName
--FROM Song s
--	LEFT JOIN Album a ON s.AlbumId = a.Id
--	LEFT JOIN Artist artist ON s.ArtistId = artist.Id
--WHERE artist.ArtistName = 'Slipknot';

-- 6.Write a SELECT statement to display how many songs exist for each album. You'll need to use the COUNT() 
-- function and the GROUP BY keyword sequence.

--SELECT
--	AlbumId,
--	COUNT(*) as 'NumSongs'
--FROM
--	Song
--GROUP BY
--	AlbumId;

-- Include Album Title?
SELECT
	a.Title as 'Album Title',
	COUNT(*) as 'NumSongs'
FROM
	Song s
		LEFT JOIN Album a ON s.AlbumId = a.Id
GROUP BY
	s.AlbumId;

-- 7. Write a SELECT statement to display how many songs exist for each artist. You'll need to use the COUNT() 
-- function and the GROUP BY keyword sequence.

--SELECT
--	ArtistId,
--	COUNT(*) as 'NumSongs'
--FROM
--	Song
--GROUP BY
--	ArtistId;

-- 8. Write a SELECT statement to display how many songs exist for each genre. You'll need to use the COUNT() 
-- function and the GROUP BY keyword sequence.

--SELECT
--	s.GenreId,
--	COUNT(*) as 'NumSongs'
--FROM
--	Genre g
--		LEFT JOIN Song s ON s.GenreId = g.Id
--GROUP BY
--	s.GenreId;

-- 9. Using MAX() function, write a select statement to find the album with the longest duration. The result should
-- display the album title and the duration.

--SELECT
--	Title,
--	AlbumLength
--FROM
--	Album
--WHERE
--	AlbumLength = (
--		SELECT
--			MAX(AlbumLength)
--		FROM
--			Album
--	);

-- 10. Using MAX() function, write a select statement to find the song with the longest duration. The result
-- should display the song title and the duration.
-- 11. Modify the previous query to also display the title of the album

--SELECT
--	s.Title,
--	s.SongLength,
--	a.Title as 'Album'
--FROM
--	Song s
--	LEFT JOIN Album a ON s.ArtistId = a.Id
--WHERE
--	SongLength = (
--		SELECT
--			MAX(SongLength)
--		FROM
--			Song
--	);


















