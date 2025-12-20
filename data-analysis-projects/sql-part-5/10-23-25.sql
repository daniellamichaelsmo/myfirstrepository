--create a table
/*
Create TABLE Sep2025JunkDB.daniella_michaels.Customers (
    customer_id INT PRIMARY KEY IDENTITY(1,1),
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100),
    subscription VARCHAR(50),
    join_date DATE DEFAULT GETDATE()
);


INSERT INTO Sep2025JunkDB.daniella_michaels.Customers (first_name, last_name, email, subscription)
VALUES ('Ava', 'Ully', 'ava.rodriguez@email.com', 'pro'),
    ('Liam', 'Patel', 'liam.patel@email.com', 'free'),
    ('Noah', 'Chen', 'bbchen.email.com', 'basic');


SELECT * FROM Sep2025JunkDB.daniella_michaels.Customers


UPDATE Sep2025JunkDB.daniella_michaels.Cusstomers
SET email =
WHERE customer_id =


SELECT *
INTO #payingcustomers
FROM Sep2025JunkDB.daniella_michaels.Customers
WHERE subscription <> 'free'
*/
SELECT * FROM #payingcustomers;

SELECT customer_id FROM #payingcustomers