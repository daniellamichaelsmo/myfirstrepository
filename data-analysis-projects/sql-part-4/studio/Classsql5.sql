--➡️ Key idea: Subqueries let you filter based 
--on the results of another query — without using a join.

--➡️ Key idea: Nested subqueries replace joins when you must 
--filter through multiple tables hierarchically

--Key idea: Subqueries can act like “smart filters,” 
--limiting results to a certain subset of data.

--➡️ Key idea: Correlated 
--subqueries let you compare row-by-row relationships between two tables.
--ummary Table
--Query	-------Type of Query----------Operator/Concept-------------Key Behavior
--1. Multiple Authors	Nested Subquery	IN + GROUP BY	Filters based on grouped results
--2. Tagged “Meditation”	Nested Subqueries (2 levels)	IN	Replaces multi-table joins
--3. Original Title Not Null	Simple Subquery	IN	Filters based on membership
--4. Reader vs. Book Rating	Correlated Subquery	Comparison (<)	Compares related data row-by-row
--List of book titles that have multiple authors

/*
SELECT title, authors
FROM BooksDB.dbo.books AS b
WHERE (
    SELECT COUNT(*)
    FROM BooksDB.dbo.books AS b2
    WHERE b2.title = b.title
) > 1
ORDER BY title, authors;

--nested subquery - groups all titles and finds
--which ones apear more than once
--outer query - retrieves the title and author
--for every row whose title is in that inner list
--IN runs the query interally and does not rely on outter querry

--Ira was asked by a customer for titles that have been tagged "Meditation".  As you create a query for Ira, think about how the tables in BooksDB are organized as you write your query.
SELECT title
FROM BooksDB.dbo.books
WHERE book_id IN (
    SELECT book_id
    FROM BooksDB.dbo.book_tags
    WHERE tag_id IN (
        SELECT tag_id
        FROM BooksDB.dbo.tags
        WHERE tag_name = 'Meditation'
    )
);

--Show tag id for 'Meditation'
SELECT tag_id
FROM BooksDB.dbo.tags
WHERE tag_name = 'Meditation';
--19682
--Show tag name for tag id 19682
SELECT tag_name
FROM BooksDB.dbo.tags
WHERE tag_id = 19682;
--Show book titles that have tag_id 19682
SELECT title
FROM BooksDB.dbo.books
WHERE book_id IN (
    SELECT book_id
    FROM BooksDB.dbo.book_tags
    WHERE tag_id = 19682
);
--inner, middle, and outer query
--inner (finds tag_id)
--middle (finds book_ids for tag)
--outer retreives titles
--uses layered filtering, each query depends on the last - moving through sequentially

--Write a query that displays both the original_title and title , in descending order by average_rating
SELECT original_title, title, average_rating
FROM BooksDB.dbo.books
WHERE book_id IN (
    SELECT book_id
    FROM BooksDB.dbo.book_tags
)
AND original_title IS NOT NULL
ORDER BY average_rating DESC;
--inner query supplis a list of valid book_ids for outer query to filter on

--**Part A:**   Write a query that compares the publication time with average reader ratings.
SELECT title,
       original_publication_year,
       average_rating
FROM BooksDB.dbo.books
WHERE average_rating < (
    SELECT AVG(rating)
    FROM BooksDB.dbo.ratings AS r
    WHERE r.book_id = books.book_id
)

--**Part B:**  She wants the list ordered by year, then the book title
SELECT title,
       original_publication_year,
       average_rating AS book_avg_rating,
       (
           SELECT AVG(rating)
           FROM BooksDB.dbo.ratings AS r
           WHERE r.book_id = b.book_id
       ) AS reader_avg_rating
FROM BooksDB.dbo.books AS b
WHERE average_rating < (
    SELECT AVG(rating)
    FROM BooksDB.dbo.ratings AS r
    WHERE r.book_id = b.book_id
)
ORDER BY original_publication_year, title;
*/
--Subquery calculateds average reader ratin from rating table
--where compares the value to average_rating
--subquery runs ones per book row for the books.book_id column

--💡 About UNION / INTERSECT / EXCEPT

--While your four current queries use subqueries, future variations could apply:

--UNION → combine lists of books (e.g., “Books tagged ‘Meditation’ or ‘Mindfulness’”)

--INTERSECT → find overlap (e.g., “Books tagged ‘Meditation’ and ‘Yoga’”)

--EXCEPT → exclude (e.g., “Books tagged ‘Meditation’ but not ‘Religion’”)