--Question 1
SELECT count(g.genre_id), g.name
FROM track t
JOIN genre g 
ON t.genre_id = g.genre_id
GROUP BY g.genre_id;

--Question 2
SELECT count(g.genre_id), g.name
FROM track t
JOIN genre g 
ON t.genre_id = g.genre_id
WHERE g.name = 'Rock' OR g.name = 'Pop'
GROUP BY g.genre_id;

--Question
SELECT ar.name, count(al.album_id)
FROM artist ar
JOIN album al
ON ar.album = t.album_id
GROUP BY al.album_id