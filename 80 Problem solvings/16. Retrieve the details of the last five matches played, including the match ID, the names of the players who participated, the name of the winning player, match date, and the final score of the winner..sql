SELECT TOP 5
	m.match_id,
	m.player1,
	m.player2,
	m.winner,
	m.match_date,
	p.score
FROM Players AS p
INNER JOIN Matches As m
ON p.player_name = m.winner
ORDER BY match_date DESC
