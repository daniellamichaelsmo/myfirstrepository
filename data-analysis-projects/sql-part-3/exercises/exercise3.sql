/*
-- INNER JOIN
SELECT TOP 30 b.title, b.average_rating, b.books_count,tr.user_id, tr.book_id
FROM BooksDB.dbo.books AS b
INNER JOIN BooksDB.dbo.to_read AS tr
ON b.book_id = tr.book_id
ORDER BY tr.book_id;

--removing WHERE filter

--find the max count tagged book, join books, and book_tags on books.best_book_id and book_tags.goodreads_book_id
SELECT b.title, COUNT(bt.tag_id) AS tag_count
FROM BooksDB.dbo.books AS b
INNER JOIN BooksDB.dbo.book_tags AS bt
ON b.best_book_id = bt.goodreads_book_id
GROUP BY b.title
ORDER BY tag_count DESC;
-- selected poems -- 400

--most popular tag for "selected Poems" using 'books' and 'book_tags' tables
SELECT TOP 1 bt.tag_id, COUNT(bt.tag_id) AS tag_count
FROM BooksDB.dbo.books AS b
INNER JOIN BooksDB.dbo.book_tags AS bt
ON b.best_book_id = bt.goodreads_book_id
WHERE b.title = 'Selected Poems'
GROUP BY bt.tag_id
ORDER BY tag_count DESC;
--tag id - 5207 for most tagged book - selected poems, (4 tags)
-- Find the tag name for tag 5207 using 'tags' and book_tags tables
SELECT t.tag_name, COUNT(bt.tag_id) AS tag_count
FROM BooksDB.dbo.tags AS t  
INNER JOIN BooksDB.dbo.book_tags AS bt
ON t.tag_id = bt.tag_id
WHERE bt.tag_id = 5207
GROUP BY t.tag_name
ORDER BY tag_count DESC;
--tag name - poetry (4 times)
*/
/*
--tag names including %dog% and book title for most tagged dog related books
SELECT t.tag_name, b.title, COUNT(bt.tag_id) AS tag_count
FROM BooksDB.dbo.tags AS t
INNER JOIN BooksDB.dbo.book_tags AS bt
ON t.tag_id = bt.tag_id
INNER JOIN BooksDB.dbo.books AS b
ON bt.goodreads_book_id = b.best_book_id
WHERE t.tag_name LIKE '%dog%'
GROUP BY t.tag_name, b.title
ORDER BY tag_count DESC;
*/
--Inside of a dog: What Dogs see, smell, and know by Alexandra Horowitz (1 time - dogs)
/*
SELECT t.tag_id, t.tag_name, COUNT(bt.tag_id) AS tag_count
FROM BooksDB.dbo.tags AS t
INNER JOIN BooksDB.dbo.book_tags AS bt
ON t.tag_id = bt.tag_id
WHERE t.tag_name = 'dogs'
GROUP BY t.tag_id, t.tag_name
ORDER BY tag_count DESC;
--9684, dogs, 80 times
*/
--What are the top 10 most popular book titles on the 'to read' list?
--use to_read and books tables
/*
SELECT TOP 10 b.title, COUNT(tr.book_id) AS user_count
FROM BooksDB.dbo.to_read AS tr
INNER JOIN BooksDB.dbo.books AS b
ON tr.book_id = b.book_id
GROUP BY b.title
ORDER BY user_count DESC;
*/
--return a table that includes top 10 users with the most number of tiles on their 'to read' list. GROUP BY user_id, and an aliased column of titles
/*
SELECT TOP 10 tr.user_id, COUNT(b.title) AS title_count
FROM BooksDB.dbo.to_read AS tr
INNER JOIN BooksDB.dbo.books AS b
ON tr.book_id = b.book_id
GROUP BY tr.user_id
ORDER BY title_count DESC;
*/
-- User 38457
--show entire to_read list for user 14771
SELECT b.title, b.average_rating, b.books_count
FROM BooksDB.dbo.to_read AS tr
INNER JOIN BooksDB.dbo.books AS b
ON tr.book_id = b.book_id
WHERE tr.user_id = 14771
ORDER BY b.average_rating DESC;