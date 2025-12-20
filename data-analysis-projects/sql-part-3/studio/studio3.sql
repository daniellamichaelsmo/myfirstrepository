/*
--return tag_id from booksdb, count tag_id, and the tag_name. Use group by and having to find keywords "woman" and "female"
SELECT bt.tag_id, COUNT(bt.tag_id) AS tag_count, t.tag_name 
FROM BooksDB.dbo.book_tags AS bt
Inner JOIN BooksDB.dbo.tags AS t
ON t.tag_id = t.tag_id
WHERE t.tag_name LIKE '%woman%' OR t.tag_name LIKE '%female%'
GROUP BY bt.tag_id, t.tag_name
HAVING COUNT(bt.[count]) > 1000
ORDER BY tag_count DESC;

--tag id leads - 5207 8717
*/
--which month did you choose? October
--What events promoting? October is National Book Month, and also Halloween month
SELECT bt.tag_id, COUNT(bt.tag_id) AS tag_count, t.tag_name 
FROM BooksDB.dbo.book_tags AS bt
Inner JOIN BooksDB.dbo.tags AS t
ON t.tag_id = t.tag_id
WHERE t.tag_name LIKE '%Witch%' OR t.tag_name LIKE '%Black-Cat%'
GROUP BY bt.tag_id, t.tag_name
ORDER BY tag_count DESC;
*/
/*


SELECT bt.tag_id, COUNT(bt.tag_id) AS tag_count, t.tag_name 
FROM BooksDB.dbo.book_tags AS bt
Inner JOIN BooksDB.dbo.tags AS t
ON t.tag_id = t.tag_id
WHERE t.tag_name LIKE '%Library%' OR t.tag_name LIKE '%Reading%'
GROUP BY bt.tag_id, t.tag_name
HAVING COUNT(bt.[count]) < 500
ORDER BY tag_count DESC;
*/
--alter this query to find titles and tag names related to reading and libraries
SELECT TOP 10 b.title, bt.tag_id, t.tag_name
FROM BooksDB.dbo.books AS b 
INNER JOIN BooksDB.dbo.book_tags AS bt
ON b.best_book_id = bt.book_id
INNER JOIN BooksDB.dbo.tags AS t
ON bt.tag_id = t.tag_id
WHERE t.tag_name LIKE '%Library%' OR t.tag_name LIKE '%Reading%'
ORDER BY bt.count DESC;




