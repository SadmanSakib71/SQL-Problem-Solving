SELECT 
	i.Title,
	i.Rating,
	g.genre
FROM IMDB AS i
INNER JOIN genre As g
ON CAST( i.Movie_id AS varchar(50)) = CAST(g.Movie_id AS varchar(50))
WHERE i.Title LIKE '%(2014)'
AND g.genre LIKE 'C%'
AND i.Budget > 40000000



