/** Challenge: Book list database
Make a database table to store my favorite books in.
In this first step, create a table to store your list of books. It should have columns for id, name, and rating.
Add three of your favorite books into the table
**/

/* Favorite books:
Happy Place by Emily Henry - 5
Skinny Woman in a Straw Hat by Hao C. Tran - 4.5 
All About Love: New Visions by bell hooks - 4.5
*/

-- Step 1: Create an empty table with columns
CREATE TABLE favorite_books
(
    id INTEGER PRIMARY KEY,
    name TEXT,
    author TEXT,
    rating NUMERIC -- Added an extra column for author
);

-- Step 2: Fill in empty table with values
INSERT INTO favorite_books
VALUES
(1, "Happy Place", "Emily Henry", 5);
INSERT INTO favorite_books
VALUES
(2, "Skinny Woman in a Straw Hat", "Hao C. Tran", 4.5);
INSERT INTO favorite_books
VALUES
(3, "All About Love: New Visions", "bell hooks", 4.5);

-- Step 3: Check that the database contains the data
SELECT *
FROM favorite_books;
