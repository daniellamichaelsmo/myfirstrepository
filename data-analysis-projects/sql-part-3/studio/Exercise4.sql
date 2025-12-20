/*
--write 5 queries, choose between correlated subquery, nested subquery, UNION, INTERSECT, or EXCEPT, you may not use joins or add multiple statments to the WHERE clause.
--return # of users who rated a book above it's average rating

SELECT COUNT(DISTINCT r.user_id) AS num_users_above_avg
FROM BooksDB.dbo.ratings AS r
WHERE r.rating > (
    SELECT AVG(r2.rating)
    FROM BooksDB.dbo.ratings AS r2
    WHERE r2.book_id = r.book_id
);
--49382

--# of users who rated a book above its average ratings
SELECT COUNT(DISTINCT r.user_id) AS num_users_above_avg
FROM BooksDB.dbo.ratings AS r
WHERE r.rating >
*/
--return book ids of books that have over 1000 ratings of 1 star or over 1000 ratings of 5 stars
