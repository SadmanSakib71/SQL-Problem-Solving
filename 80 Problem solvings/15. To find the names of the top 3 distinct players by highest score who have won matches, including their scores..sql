
SELECT  DISTINCT TOP 3
	P.player_name,
	P.score
FROM Players As P
INNER JOIN Matches AS M
ON P.player_name = M.winner
ORDER BY score DESC
