--Question 1
CREATE VIEW rock AS 
SELECT * FROM track
WHERE genre_id IN (SELECT genre_id FROM genre
WHERE genre.name = 'Rock');

--Question 2
CREATE VIEW classical_count AS
SELECT COUNT(*) FROM track t
WHERE t.track_id IN (SELECT pt.track_id FROM playlist_track pt 
WHERE pt.playlist_id IN (SELECT p.playlist_id FROM playlist p
WHERE p.name = 'Classical'));