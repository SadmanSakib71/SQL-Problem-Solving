--Print the genre and the maximum net profit among all the movies of that genre released in 2012 per genre. 
-- 1. Do not print any row where either genre or the net profit is empty/null.
-- 2. net\_profit = Domestic + Worldwide - Budget
-- 3. Keep the name of the columns as 'genre' and 'net\_profit'
-- 4. The genres should be printed in alphabetical order.

SELECT 
	CAST(g.genre AS VARCHAR(100)) AS genre,
	MAX(e.Domestic + e.Worldwide - i.Budget) AS Net_Profit
FROM genre AS g
INNER JOIN earning AS e
ON CAST(e.Movie_id AS varchar(20)) = CAST(g.Movie_id AS varchar(20))
INNER JOIN IMDB AS i
ON CAST(i.Movie_id AS varchar(20)) = CAST (e.Movie_id AS varchar(20))
WHERE i.Title LIKE '%(2012)'
AND g.genre IS NOT NULL
GROUP BY CAST(g.genre AS VARCHAR(100))
ORDER BY CAST(g.genre AS VARCHAR(100)) ASC