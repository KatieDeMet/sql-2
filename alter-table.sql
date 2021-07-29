--Question 2
ALTER TABLE animals
ADD location VARCHAR(255);

--Question 3
INSERT INTO animals (name, location, age, type)
VALUES
    ('Vali', 'Siberia', 0, 'Doggy'),
    ('Stitch', 'Honolulu', 2, 'Alien'),
    ('Reptar', 'Pangea', 100000, 'Dino');

--Question 4
ALTER TABLE animals
RENAME COLUMN type TO species;

--Question 5
ALTER TABLE animals
ALTER COLUMN species TYPE VARCHAR;