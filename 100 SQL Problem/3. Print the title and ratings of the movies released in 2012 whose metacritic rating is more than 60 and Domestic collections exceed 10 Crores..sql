SELECT 
	i.Title,
	i.Rating,
	i.MetaCritic
FROM IMDB AS i
INNER JOIN earning AS e
ON CAST(e.Movie_id AS varchar(20)) = CAST(i.Movie_id AS varchar(20))
WHERE i.Title LIKE '%(2012)'
AND i.MetaCritic > 60
AND e.Domestic > 100000000