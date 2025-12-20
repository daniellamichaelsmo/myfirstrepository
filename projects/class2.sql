/*
select Upper(left(surname, 3)), nationality, driverID
From formula_one.dbo.drivers

--Which month have the most races occurred in?

select * from formula_one.information_schema.COLUMNS
Where Table_name = 'races'



Select Month(date) as race_month,
    Datename(MONTH, date) as month_name,
    Count(*) as num_races
From formula_one.dbo.races
Where Year(date) > 2014
Group by Month(date), Datename(MONTH, date)
Order by num_races DESC


-- Race reviews occur 4 days after each race. Calculate the day of the race reviews
SELECT name AS race_name,
    date AS race_date,
    DATEADD(DAY, 4, date) AS review_date
FROM formula_one.dbo.races


--how can we display each race date as a formatted string like "sunday, March 28, 2021"?
SELECT name AS race_name,
FORMAT(date, 'dddd, MMMM dd, yyyy') AS formatted_race_date
From formula_one.dbo.races
ORDER by date


Select *
From booksdb.dbo.books
where original_title IS NULL


Select authors, book_id, ISNULL(original_title, title) AS original_title_refined
From BooksDB.dbo.books


Select authors, book_id, COALESCE(original_title, title) AS original_title_refined
From BooksDB.dbo.books




--cell phone, home phone, work phone
--primary phone contact
Select *,
    COALESCE(cell_phone, home_phone, work_phone, 'No phone available') AS primary_phone


--lesson 11 sql part 2 studio
--create a query that returns the longest title in the dataset

Select MAX(LEN(title)) AS longest_title
from.booksdb.dbo.books --186

--name of longest title
SELECT title
FROM booksdb.dbo.books
WHERE LEN(title) = (SELECT MAX(LEN(title)) FROM booksdb.dbo.books)


--query that retursn the length of the shortest title author name
SELECT MIN(LEN(authors)) AS shortest_author_name_length
FROM booksdb.dbo.books

--query that returns the shortest author name
SELECT authors
FROM booksdb.dbo.books
WHERE LEN(authors) = (SELECT MIN(LEN(authors)) FROM booksdb.dbo.books)
--avi


-- how many titles contain the word "The"?
SELECT COUNT(*) AS num_titles_with_the
FROM booksdb.dbo.books
WHERE title LIKE '%The%'
-- 4702

-- how many titles contain the word "the"?
SELECT COUNT(*) AS num_titles_with_the_lowercase
FROM booksdb.dbo.books
WHERE title LIKE '%the%'
-- 4702


--how many authors' names start with 'Z'?
SELECT COUNT(*) AS num_authors_starting_with_Z
FROM booksdb.dbo.books
WHERE authors LIKE 'Z%'
--11

--how many books are in languages other than English?
--English - en, eng, en-us, and en-uk (LEFT)

SELECT title AS num_non_english_books, language_code
FROM booksdb.dbo.books  
WHERE LEFT(language_code, 2) != 'en';
--186


--return using substring -  SELECT title AS num_non_english_books, language_code
--FROM booksdb.dbo.books  
--WHERE LEFT(language_code, 2) != 'en';
--186
SELECT title AS num_non_english_books, language_code
FROM booksdb.dbo.books
WHERE SUBSTRING(language_code, 1, 2) != 'en';


--create column to return title, authors, and langauge code language
--Concatenate these elements so they return title by authors in language_code
SELECT title, authors, language_code,
    CONCAT(title, ' by ', authors, ' in ', language_code) AS book_details
FROM booksdb.dbo.books
--WHERE language_code IS NOT NULL
--AND authors IS NOT NULL 

-- change book_details to show 'Unknown' when language_code is null
select concat(title, 'by', authors, 'in ', 
    COALESCE(language_code, 'Unknown')), 'language'
FROM booksdb.dbo.books

--same queery but usin isnull instead of coalesce
select concat(title , ' by ', authors, 'in ', 
    ISNULL(language_code, 'Unknown')), 'language'
FROM booksdb.dbo.books
*/