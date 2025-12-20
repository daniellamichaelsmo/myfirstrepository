--return top 100 results, number one book
/*
Select top 100 *, book_id, authors,title,average_rating as rating 
From dbo.books 
Order by average_rating DESC
--The Complete Calvin and Hobbes
*/

--return least popular book
/*
SELECT title, average_rating
From dbo.books
Where average_rating = (select min(average_rating) From dbo.books)
--One Night at the Call Center 2.47
*/

/*
--return most popular tag
Select top 1 *, tag_id, [count]
From dbo.book_tags
--goodreads_book_id	tag_id	count	tag_id	COUNT
--        1	         30574	167697	 30574  167697
--#30574
*/

/*
--return name of the most popular tag
SELECT tag_id, tag_name
From dbo.tags
Where tag_id = 30574
--to-read
*/

/*
--return # of books released from 2000-2010
 select [original_publication_year]
 From dbo.books
 Where [original_publication_year] between 2000 and 2010
--3594
*/

/*
--return # of book titles containing the world "happy"
SELECT COUNT(*) AS happy
WHERE title LIKE '%happy%'
*/

--return all books form top 3 authors, sort by author and rating
--subquery for top 3 authors
/*
Select top 100 *, book_id, authors,title,average_rating as rating from dbo.books order by average_rating DESC
*/
--Bill Watterson
--Brandon Sanderson
--J.K. Rowling,
/*
SELECT authors, title, average_rating
FROM dbo.books
WHERE authors IN ('J.K. Rowling', 'Bill Watterson', 'Brandon Sanderson')
ORDER BY authors, average_rating DESC
--
The Complete Calvin and Hobbes
It's a Magical World: A Calvin and Hobbes Collection
There's Treasure Everywhere: A Calvin and Hobbes Collection
The Authoritative Calvin and Hobbes: A Calvin and Hobbes Treasury
The Indispensable Calvin and Hobbes
Attack of the Deranged Mutant Killer Monster Snow Goons
The Revenge of the Baby-Sat
Homicidal Psycho Jungle Cat: A Calvin and Hobbes Collection
The Days Are Just Packed: A Calvin and Hobbes Collection
The Calvin and Hobbes Lazy Sunday Book
The Essential Calvin and Hobbes: A Calvin and Hobbes Treasury
The Calvin and Hobbes Tenth Anniversary Book
Words of Radiance (The Stormlight Archive, #2)
The Way of Kings, Part 1 (The Stormlight Archive #1.1)
The Way of Kings (The Stormlight Archive, #1)
Mistborn Trilogy Boxed Set (Mistborn, #1-3)
The Hero of Ages (Mistborn, #3)
The Bands of Mourning (Mistborn, #6)
The Final Empire (Mistborn, #1)
Secret History (Mistborn, #3.5)
The Well of Ascension (Mistborn, #2)
The Emperor's Soul
Shadows of Self (Mistborn, #5)
Firefight (The Reckoners, #2)
The Rithmatist (The Rithmatist, #1)
Warbreaker (Warbreaker, #1)
The Alloy of Law (Mistborn, #4)
Calamity (The Reckoners, #3)
Elantris (Elantris, #1)
Steelheart (The Reckoners, #1)
Legion (Legion, #1)
Mitosis (The Reckoners, #1.5)
Alcatraz Versus the Evil Librarians (Alcatraz, #1)
Harry Potter Boxset (Harry Potter, #1-7)
Harry Potter Collection (Harry Potter, #1-6)
Harry Potter and the Order of the Phoenix (Harry Potter, #5, Part 1)
Fantastic Beasts and Where to Find Them: The Original Screenplay
Harry Potter Schoolbooks Box Set: Two Classic Books from the Library of Hogwarts School of Witchcraft and Wizardry
Hogwarts: An Incomplete and Unreliable Guide (Pottermore Presents, #3)
The Tales of Beedle the Bard
The Casual Vacancy
*/

/*
--return # of authors whose first name is betwen rock and roll
SELECT COUNT(*) AS author_count
FROM dbo.books
WHERE LEFT(authors, 
           CASE 
               WHEN CHARINDEX(' ', authors) > 0 
               THEN CHARINDEX(' ', authors) - 1 
               ELSE LEN(authors) 
           END)
      BETWEEN 'Rock' AND 'Roll'
--25
*/

--My questions
--return book most 5 star ratings?
/*
SELECT title, ratings_5
From dbo.books
Where ratings_5 = (select max(ratings_5) From dbo.books
*/

--return most popular language
/*
SELECT language_code, COUNT(*) AS book_count
FROM dbo.books
GROUP BY language_code
ORDER BY book_count DESC
--English (in cluding Eng, US/GB English)
--8668
*/