-- Import CSV
COPY movies(id, title, year, rating, director)
FROM 'partial_data.csv'
WITH HEADER = TRUE;

-- Count all rows
SELECT COUNT(*) FROM movies;

-- Create index
CREATE INDEX rating_index ON movies (rating);

-- Count movies with rating G
SELECT COUNT(*) FROM movies WHERE rating = 'G';
