/** Challenge: TODO list database stats
Lesson 1: SQL basics
Here's a table containing a TODO list with the number of minutes it will take to complete each item.
First, insert another item to the todo list with the estimated minutes it will take.
Next, select the SUM of minutes it will take to do all of the items on the TODO list. There should only be one SELECT statement.
**/

-- code provided by Khan Academy
CREATE TABLE todo_list
(
    id INTEGER PRIMARY KEY,
    item TEXT,
    minutes INTEGER
);
INSERT INTO todo_list
VALUES
(1, "Wash the dishes", 15);
INSERT INTO todo_list
VALUES
(2, "Vacuuming", 20);
INSERT INTO todo_list
VALUES
(3, "Learn some stuff on KA", 30);

-- Step 1: Insert another item into the table
INSERT INTO todo_list
VALUES
(4, "Tidy bedroom", 60);

-- Step 2: Select the SUM of minutes it'll take to complete the items on the TODO list
SELECT SUM(minutes)
FROM todo_list;
