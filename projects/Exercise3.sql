
/*
-- Query 1: LEFT JOIN
SELECT TOP 50 b.title, b.average_rating, b.books_count,tr.user_id, tr.book_id
FROM BooksDB.dbo.books AS b
LEFT JOIN BooksDB.dbo.to_read AS tr
ON b.best_book_id = tr.book_id
ORDER BY b.average_rating;



-- Query 2: LEFT JOIN USING 'IS NOT NULL'
SELECT TOP 50 b.title, b.average_rating, b.books_count,tr.user_id, tr.book_id
FROM BooksDB.dbo.books AS b
LEFT JOIN BooksDB.dbo.to_read AS tr
ON b.best_book_id = tr.book_id
WHERE tr.user_id IS NOT NULL
ORDER BY b.average_rating;


-- Query 1: RIGHT JOIN
SELECT TOP 300 b.title, b.average_rating, b.books_count, tr.user_id, tr.book_id
FROM BooksDB.dbo.books AS b
RIGHT JOIN BooksDB.dbo.to_read AS tr
ON b.best_book_id = tr.book_id;


-- FULL JOIN
SELECT TOP 30 b.title, b.average_rating, b.books_count,tr.user_id, tr.book_id
FROM BooksDB.dbo.books AS b
FULL JOIN BooksDB.dbo.to_read As tr
ON b.book_id = tr.book_id



-- INNER JOIN
SELECT TOP 30 b.title, b.average_rating, b.books_count,tr.user_id, tr.book_id
FROM BooksDB.dbo.books AS b
INNER JOIN BooksDB.dbo.to_read AS tr
ON b.book_id = tr.book_id


--join books and book_tags tables on books.best_book_id, for title and number of times a book tag has been used
SELECT TOP 10 b.title, bt.tag_id, bt.count, b.average_rating
FROM BooksDB.dbo.books AS b
INNER JOIN BooksDB.dbo.book_tags AS bt
ON b.best_book_id = bt.tag_id
ORDER BY bt.count DESC;


select tag_id, tag_name from BooksDB.dbo.tags
where tag_id = 11557

--3817 baking-pastry --3816 baking
select tag_id, tag_name FROM BooksDB.dbo.tags
where tag_name LIKE '%baking%'


--join books and book_tags tables on books.best_book_id, for title and number of times a book tag has been used
SELECT TOP 10 b.title, bt.tag_id
FROM BooksDB.dbo.books AS b
INNER JOIN BooksDB.dbo.book_tags AS bt
ON b.best_book_id = bt.tag_id
WHERE bt.tag_id = 3816
*/
--top ten most popular book titles on the 'to read' list
SELECT TOP 10 b.title, COUNT(tr.book_id) AS to_read_count
FROM BooksDB.dbo.books AS b
INNER JOIN BooksDB.dbo.to_read AS tr
ON b.best_book_id = tr.book_id
GROUP BY b.title
ORDER BY to_read_count DESC;