/** Project: App impersonator
Lesson 4: Modifying databases with SQL
Think about your favorite apps, and pick one that stores your data- like a game that stores scores, an app that lets you post updates, etc.
Now in this project, you're going to imagine that the app stores your data in a SQL database (which is pretty likely!), and write SQL statements that might look like their own SQL.

CREATE a table to store the data.
INSERT a few example rows in the table.
Use an UPDATE to emulate what happens when you edit data in the app.
Use a DELETE to emulate what happens when you delete data in the app.
**/

-- CREATE a table to store the data
CREATE TABLE airbuds (
  id INTEGER PRIMARY KEY,
  name TEXT, -- name of user
  username TEXT, -- username
  song_title TEXT, -- title of song
  artist TEXT, -- artist(s) of the song
  last_listened INTEGER -- last listened to in hours
  );

-- INSERT a few example rows in the table.
-- data is from Friday June 7, 2024 at 4:13pm
INSERT INTO airbuds VALUES (1, "Joshua T", "josh.t.1", "Saturn", "SZA", 7);
INSERT INTO airbuds VALUES (2, "Joshua T", "josh.t.1", "You", "Don Toliver, Travis Scott", 7);
INSERT INTO airbuds VALUES (3, "Joshua T", "josh.t.1", "Out Of Luck", "KAYTRANADA, Mariah the Scientist", 17);
INSERT INTO airbuds VALUES (4, "Joshua T", "josh.t.1", "Pink + White", "Frank Ocean", 19);
INSERT INTO airbuds VALUES (5, "Shanz", "smdinh", "I THINK", "Tyler, The Creator", 22);
INSERT INTO airbuds VALUES (6, "Joshua T", "josh.t.1", "Juicy - 2005 Remaster", "The Notorious B.I.G.", 49);
INSERT INTO airbuds VALUES (7, "Shanz", "smdinh", "But You", "9th Wonder, .SMITTY", 54);
INSERT INTO airbuds VALUES (8, "Shanz", "smdinh", "Fu-Gee-La", "Fugees, Ms. Lauryn Hill", 54);
INSERT INTO airbuds VALUES (9, "Shanz", "smdinh", "Waiting In Vain", "Vince Staples", 78);
-- Check work
SELECT * FROM airbuds;

-- Use an UPDATE to emulate what happens when you edit data in the app.
UPDATE airbuds SET title = "Black&Blue" WHERE id = "9";
-- Check work
SELECT * FROM airbuds;

-- Use a DELETE to emulate what happens when you delete data in the app.
DELETE FROM airbuds WHERE id = "2";
-- Check work
SELECT * FROM airbuds;
