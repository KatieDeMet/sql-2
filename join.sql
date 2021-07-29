--Question 1
SELECT * FROM invoice
JOIN invoice_line
ON invoice.invoice_id = invoice_line.invoice_id
WHERE invoice_line.unit_price > 0.99;

--Question 2
SELECT i.invoice_date, c.first_name, c.last_name, i.total FROM invoice i
JOIN customer c
ON i.customer_id = c.customer_id;

--Question 3
SELECT c.first_name, c.last_name, e.first_name AS employee_first_name, e.last_name AS employee_last_name FROM customer c
JOIN employee e
ON c.support_rep_id = e.employee_id;

--Question 5
SELECT al.title AS album_title, ar.name AS artist FROM album al
JOIN artist ar
ON al.artist_id = ar.artist_id;

--Question 6
SELECT pt.track_id FROM playlist_track pt
JOIN playlist p 
ON p.playlist_id = pt.playlist_id
WHERE p.name = 'Music';

--Question 7
SELECT t.name FROM track t
JOIN playlist_track p
ON t.track_id = p.track_id
where p.playlist_id = 5;

--Question 8
SELECT t.name, pl.name FROM track t
JOIN playlist_track pt
ON t.track_id = pt.track_id
JOIN playlist pl
ON pt.playlist_id = pl.playlist_id;

--Question 9
SELECT t.name, a.title FROM track t
JOIN album a
ON t.album_id = a.album_id
JOIN genre g
ON g.genre_id = t.genre_id
WHERE g.name = 'Alternative & Punk';
