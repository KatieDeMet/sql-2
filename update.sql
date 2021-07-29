--Question 1
UPDATE customer SET fax = NULL
Where fax IS NOT NULL;

--Question 2
UPDATE customer SET company = 'Self'
WHERE company IS NULL;

--Question 3
UPDATE customer SET last_name = 'Thompson'
WHERE first_name = 'Julia' and last_name = 'Barnett';

--Question 4
UPDATE customer SET support_rep_id = 4
WHERE email = 'luisrojas@yahoo.cl';

--Question 5
UPDATE track t SET composer = 'The darkness around us'
WHERE t.genre_id IN (SELECT g.genre_id FROM genre g
WHERE g.name = 'Metal' and t.composer is NULL);