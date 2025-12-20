-- filepath: studio/queries/studio.sql
-- This file contains SQL queries for data analysis, including various SELECT statements to retrieve information about books, authors, and tags from a database.

-- Return top 100 results, number one book
SELECT TOP 100 *, book_id, authors, title, average_rating AS rating 
FROM dbo.books 
ORDER BY average_rating DESC;

-- Return least popular book
SELECT title, average_rating
FROM dbo.books
WHERE average_rating = (SELECT MIN(average_rating) FROM dbo.books);

-- Return most popular tag
SELECT TOP 1 *, tag_id, [count]
FROM dbo.book_tags
ORDER BY [count] DESC;

-- Return name of the most popular tag
SELECT tag_id, tag_name
FROM dbo.tags
WHERE tag_id = (SELECT TOP 1 tag_id FROM dbo.book_tags ORDER BY [count] DESC);

-- Return # of books released from 2000-2010
SELECT COUNT(*) AS book_count
FROM dbo.books
WHERE [original_publication_year] BETWEEN 2000 AND 2010;

-- Return # of book titles containing the word "happy"
SELECT COUNT(*) AS happy
FROM dbo.books
WHERE title LIKE '%happy%';

-- Return all books from top 3 authors, sorted by author and rating
SELECT authors, title, average_rating
FROM dbo.books
WHERE authors IN ('J.K. Rowling', 'Bill Watterson', 'Brandon Sanderson')
ORDER BY authors, average_rating DESC;

-- Return # of authors whose first name is between 'Rock' and 'Roll'
SELECT COUNT(*) AS author_count
FROM dbo.books
WHERE LEFT(authors, 
           CASE 
               WHEN CHARINDEX(' ', authors) > 0 
               THEN CHARINDEX(' ', authors) - 1 
               ELSE LEN(authors) 
           END)
      BETWEEN 'Rock' AND 'Roll';

-- Return book with most 5 star ratings
SELECT title, ratings_5
FROM dbo.books
WHERE ratings_5 = (SELECT MAX(ratings_5) FROM dbo.books);

-- Return most popular language
SELECT language_code, COUNT(*) AS book_count
FROM dbo.books
GROUP BY language_code
ORDER BY book_count DESC;