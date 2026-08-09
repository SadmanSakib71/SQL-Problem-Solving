
SELECT 
	author_id,
	author_name,
	publication_name
FROM Article
WHERE view_count = 0
ORDER BY author_id ASC