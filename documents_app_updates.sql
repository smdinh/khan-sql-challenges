/** Challenge: Dynamic Documents
Lesson 4: Modifying databases with SQL
We've created a database for a documents app, with rows for each document with its title, content, and author.
In this first step, use UPDATE to change the author to 'Jackie Draper' for all rows where it's currently 'Jackie Paper'.
Then re-select all the rows to make sure the table changed like you expected.
Now you'll delete a row, being very careful not to delete all the rows.
Only delete the row where the title is 'Things I'm Afraid Of'. Then re-select all the rows to make sure the table changed like you expected.
**/

-- code provided by Khan Academy
CREATE table documents
(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    title TEXT,
    content TEXT,
    author TEXT
);

INSERT INTO documents
(
    author,
    title,
    content
)
VALUES
("Puff T.M. Dragon", "Fancy Stuff", "Ceiling wax, dragon wings, etc.");
INSERT INTO documents
(
    author,
    title,
    content
)
VALUES
("Puff T.M. Dragon", "Living Things", "They're located in the left ear, you know.");
INSERT INTO documents
(
    author,
    title,
    content
)
VALUES
("Jackie Paper", "Pirate Recipes", "Cherry pie, apple pie, blueberry pie.");
INSERT INTO documents
(
    author,
    title,
    content
)
VALUES
("Jackie Paper", "Boat Supplies", "Rudder - guitar. Main mast - bed post.");
INSERT INTO documents
(
    author,
    title,
    content
)
VALUES
("Jackie Paper", "Things I'm Afraid Of", "Talking to my parents, the sea, giant pirates, heights.");

SELECT *
FROM documents;

-- Step 1: Use UPDATE to change the author to 'Jackie Draper' for all rows where it's currently 'Jackie Paper'
UPDATE documents
SET author = "Jackie Draper"
WHERE author = "Jackie Paper";
-- Re-select all the rows to make sure the table changed like you expected
SELECT *
FROM documents;

-- Step 2: Only delete the row where the title is 'Things I'm Afraid Of'
DELETE FROM documents
WHERE title = "Things I'm Afraid Of";
-- Re-select all the rows to make sure the table changed like you expected
SELECT *
FROM documents;
