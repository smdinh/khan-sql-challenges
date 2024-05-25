/** Project: Data dig
Lesson 2: More advanced SQL queries
Pick one of data sets give or create a data set like that, and use advanced SELECT queries to discover things about the data.
What sort of questions might one have about that data, like if they were using it for an app or a business idea? Here are some ideas:
What are average, max, and min values in the data?
What about those numbers per category in the data (using HAVING)?
What ways are there to group the data values that don’t exist yet (using CASE)?
What interesting ways are there to filter the data (using AND/OR)?
**/

/* Dataset: Marvel Characters 
Based on website: https://www.marvel.com/characters
with popularity data using chatgpt
and power grid data from http://marvel.wikia.com/Power_Grid#Power
For categories, I used the ones from https://gist.github.com/pamelafox/585364b62390ea720858
*/ 

CREATE TABLE marvels
(
    id INTEGER PRIMARY KEY,
    name TEXT,
    popularity INTEGER,        -- 1 being most popular, 50 being least
    alignment TEXT,            -- good, neutral or bad
    gender TEXT,               -- female or male
    height_ft NUMERIC,
    weight_lb NUMERIC,
    hometown TEXT,             -- where they're from
    durability INTEGER,        -- ability to resist or recover from bodily injury
    energy_projection INTEGER, -- ability to discharge energy
    fighting_skills INTEGER,   -- proficiency in hand-to-hand combat
    intelligence INTEGER,      -- ability to think and process information
    speed INTEGER,             -- ability to move over land by running or flight
    strength INTEGER           -- ability to lift weight over one's head
); 

INSERT INTO marvels
VALUES
(1, "Spider Man", 1, "Good", "Male", 5.83, 167, "USA", 3, 1, 4, 4, 3, 4);
INSERT INTO marvels
VALUES
(2, "Iron Man", 2, "Neutral", "Male", 6.5, 425, "USA", 6, 6, 4, 6, 5, 6);
INSERT INTO marvels
VALUES
(3, "Hulk", 3, "Neutral", "Male", 7.5, 1150, "USA", 7, 5, 4, 6, 3, 7);
INSERT INTO marvels
VALUES
(4, "Wolverine", 4, "Good", "Male", 5.25, 300, "Canada", 4, 1, 7, 2, 2, 4);
INSERT INTO marvels
VALUES
(5, "Thor", 5, "Good", "Male", 6.5, 640, "Asgard", 6, 6, 4, 2, 7, 7);
INSERT INTO marvels
VALUES
(6, "Green Goblin", 28, "Bad", "Male", 6.33, 385, "USA", 4, 3, 3, 4, 3, 4);
INSERT INTO marvels
VALUES
(7, "Doctor Doom", 13, "Bad", "Male", 6.58, 415, "Latveria", 6, 6, 4, 6, 5, 4);
INSERT INTO marvels
VALUES
(8, "Thanos", 11, "Bad", "Male", 6.58, 985, "Titan", 6, 6, 4, 6, 7, 7);
INSERT INTO marvels
VALUES
(9, "Loki", 12, "Neutral", "Male", 6.33, 525, "Jotunheim", 6, 6, 3, 5, 7, 5);
INSERT INTO marvels
VALUES
(10, "Gambit", 42, "Good", "Male", 6.17, 179, "USA", 2, 2, 4, 2, 2, 2);
INSERT INTO marvels
VALUES
(11, "Ghost Rider", 23, "Neutral", "Male", 6.17, 220, "USA", 5, 4, 2, 2, 3, 4);
INSERT INTO marvels
VALUES
(12, "Scarlet Witch", 16, "Neutral", "Female", 5.58, 132, "Transia", 2, 6, 3, 3, 2, 2);
INSERT INTO marvels
VALUES
(13, "Captain Marvel", 10, "Good", "Female", 5.92, 165, "USA", 6, 6, 4, 3, 5, 5);
INSERT INTO marvels
VALUES
(14, "Captain America", 6, "Good", "Male", 6.17, 240, "USA", 3, 1, 6, 3, 2, 3);
INSERT INTO marvels
VALUES
(15, "Quicksilver", 26, "Good", "Male", 6.0, 175, "Transia", 2, 2, 4, 3, 7, 2);
INSERT INTO marvels
VALUES
(16, "Shang-Chi", 27, "Good", "Male", 5.83, 175, "China", 4, 3, 7, 4, 4, 3);
INSERT INTO marvels
VALUES
(17, "Kang The Conqueror", 33, "Bad", "Male", 6.25, 230, "Other-Earth", 5, 6, 4, 4, 7, 4);
INSERT INTO marvels
VALUES
(18, "Groot", 19, "Good", "Male", 23.0, 9038.95, "Planet X", 4, 3, 4, 3, 3, 7);
INSERT INTO marvels
VALUES
(19, "Rocket Racoon", 20, "Good", "Male", 4.0, 55, "Halfworld", 2, 1, 4, 3, 2, 2);
INSERT INTO marvels
VALUES
(20, "Magento", 24, "Neutral", "Male", 6.17, 190, "EUA", 2, 6, 4, 5, 5, 2);
INSERT INTO marvels
VALUES
(21, "Black Panther", 7, "Good", "Male", 6.0, 200, "Wakanda", 3, 3, 5, 5, 2, 3);
INSERT INTO marvels
VALUES
(22, "Killmonger", 36, "Neutral", "Male", 6.5, 225, "Wakanda", 3, 1, 5, 5, 2, 4);
INSERT INTO marvels
VALUES
(23, "Doctor Strange", 8, "Good", "Male", 6.17, 180, "USA", 3, 6, 3, 4, 7, 2);
INSERT INTO marvels
VALUES
(24, "Namor", 32, "Bad", "Male", 6.17, 278, "Atlantis", 6, 2, 4, 2, 3, 6);
INSERT INTO marvels
VALUES
(25, "Kingpin", 41, "Bad", "Male", 6.58, 450, "USA", 2, 1, 5, 3, 2, 3);
INSERT INTO marvels
VALUES
(26, "Enchantress", 34, "Bad", "Female", 6.25, 450, "Asgard", 5, 5, 5, 6, 4, 3);
INSERT INTO marvels
VALUES
(27, "Hela", 35, "Bad", "Female", 7.0, 500, "Jotunheim", 7, 6, 3, 3, 7, 7);
INSERT INTO marvels
VALUES
(28, "Ant-Man", 14, "Good", "Male", 6.0, 190, "USA", 2, 3, 2, 4, 2, 2);
INSERT INTO marvels
VALUES
(29, "Black Widow", 9, "Good", "Female", 5.58, 131, "EUA", 3, 3, 6, 3, 2, 3);
INSERT INTO marvels
VALUES
(30, "Ms. Marvel", 43, "Good", "Female", 5.33, 125, "USA", 4, 1, 1, 2, 3, 4);
INSERT INTO marvels
VALUES
(31, "Winter Solider", 25, "Neutral", "Male", 5.75, 260, "USA", 4, 1, 6, 2, 2, 4);
INSERT INTO marvels
VALUES
(32, "Black Bolt", 22, "Good", "Male", 6.17, 210, "Attilan", 3, 5, 4, 2, 3, 5);
INSERT INTO marvels
VALUES
(33, "Jean Grey", 38, "Neutral", "Female", 5.5, 115, "USA", 7, 7, 7, 3, 7, 2);
INSERT INTO marvels
VALUES
(34, "Agatha Harkness", 39, "Bad", "Female", 5.92, 130, "USA", 1, 6, 1, 4, 7, 1);
INSERT INTO marvels
VALUES
(35, "Gamora", 18, "Good", "Female", 6.0, 170, "Zen-Whoberi", 3, 1, 6, 3, 4, 3);
INSERT INTO marvels
VALUES
(36, "Ultron", 30, "Bad", "Male", 6.0, 535, "USA", 7, 6, 4, 4, 3, 6);
INSERT INTO marvels
VALUES
(37, "Mantis", 37, "Good", "Female", 5.5, 115, "Vietnam", 7, 3, 6, 3, 7, 3);
INSERT INTO marvels
VALUES
(38, "Drax", 44, "Good", "Male", 6.33, 680, "USA", 7, 6, 4, 2, 2, 5);
INSERT INTO marvels
VALUES
(39, "Hawkeye", 21, "Good", "Male", 6.25, 230, "USA", 2, 1, 4, 2, 2, 2);
INSERT INTO marvels
VALUES
(40, "Star-Lord", 17, "Good", "Male", 6.17, 175, "USA", 3, 1, 4, 4, 2, 3);
INSERT INTO marvels
VALUES
(41, "Vision", 15, "Good", "Male", 6.25, 300, "USA", 6, 6, 3, 4, 3, 5);
INSERT INTO marvels
VALUES
(42, "Mystique", 31, "Bad", "Female", 5.83, 120, "EUA", 4, 1, 5, 4, 2, 2);
INSERT INTO marvels
VALUES
(43, "Moonstone", 40, "Bad", "Female", 5.92, 130, "USA", 6, 7, 3, 4, 7, 5);
INSERT INTO marvels
VALUES
(44, "Ancient One", 45, "Good", "Male", 5.92, 160, "Tibet", 4, 6, 6, 4, 7, 3);
INSERT INTO marvels
VALUES
(45, "Nebula", 29, "Neutral", "Female", 6.08, 185, "Luphom", 3, 6, 4, 4, 2, 5);

-- View table sorted from most to least popular
SELECT *
FROM marvels
ORDER BY popularity;
-- results: most popular - spider-man, least popular: sin

-- How many Marvel characters per each alignment, separated by gender?
SELECT alignment, gender, COUNT(*)
FROM marvels
GROUP BY alignment, gender;
-- results: bad+female - 6, bad+male - 7, good+female - 5, good+male - 18, neutral+female - 7, neutral+male - 7

-- Who's the shortest character?
SELECT name, MIN(height_ft) as shortest
FROM marvels;
-- results: Rocket Racoon

-- Who's the tallest character?
SELECT name, MAX(height_ft) as tallest
FROM marvels;
-- results: Groot

-- Which alignment of Marvel characters has the highest average in each characteristic of the power grid?
SELECT alignment,
       AVG(durability) AS avg_durability,
       AVG(energy_projection) AS avg_energy,
       AVG(fighting_skills) AS avg_fighting,
       AVG(intelligence) AS avg_intelligence,
       AVG(speed) AS avg_speed,
       AVG(strength) As avg_strength
FROM marvels
GROUP BY alignment;
-- results: durability - bad, energy - bad, fighting - good, intelligence - bad, speed - bad, strength - bad

-- Which gender has better fighting skill?
SELECT gender,
       AVG(fighting_skills) AS avg_fighting
FROM marvels
GROUP BY gender;
-- results: females are slightly better at fighting

--  What are each of the alignments' max intelligence?
SELECT gender,
       AVG(intelligence) AS avg_intelligence
FROM marvels
GROUP BY gender;
-- results: bad - 6, good - 4, bad - 6

SELECT alignment,
       MAX(intelligence) AS max_intelligence
FROM marvels
GROUP BY alignment;

-- Which alignments have an average popularity greater than 25?
SELECT alignment,
       AVG(popularity) AS avg_popularity
FROM marvels
GROUP BY alignment
HAVING avg_popularity > 25;
-- results: bad and neutral

-- How many characters are classified under each intelligence category?
SELECT CASE
           WHEN intelligence = 1 THEN
               "slow or impaired"
           WHEN intelligence = 2 THEN
               "normal"
           WHEN intelligence = 3 THEN
               "learned"
           WHEN intelligence = 4 THEN
               "gifted"
           WHEN intelligence = 5 THEN
               "genius"
           WHEN intelligence = 6 THEN
               "super-genius"
           WHEN intelligence = 7 THEN
               "omniscent"
       END AS intelligence_category,
       COUNT(*)
FROM marvels
ORDER BY CASE -- needed so that it shows up in this order
             WHEN intelligence_category = "slow or impaired" THEN
                 1
             WHEN intelligence_category = "normal" THEN
                 2
             WHEN intelligence_category = "learned" THEN
                 3
             WHEN intelligence_category = "gifted" THEN
                 4
             WHEN intelligence_category = "genius" THEN
                 5
             WHEN intelligence_category = "super-genius" THEN
                 6
             WHEN intelligence_category = "omniscent" THEN
                 7
         END;
-- results: normal - 11, learned - 15, gifted - 15, genius - 4, super-genius - 5

-- How many characters are classified under each strength category?
SELECT CASE
           WHEN strength = 1 THEN
               "weak"
           WHEN strength = 2 THEN
               "normal"
           WHEN strength = 3 THEN
               "peak human"
           WHEN strength > 3
                AND strength < 7 THEN
               "superhuman"
           WHEN strength = 7 THEN
               "incalcuable"
       END AS strength_category,
       COUNT(*)
FROM marvels
GROUP BY strength_category
ORDER BY CASE
             WHEN strength_category = "weak" THEN
                 1
             WHEN strength_category = "normal" THEN
                 2
             WHEN strength_category = "peak human" THEN
                 3
             WHEN strength_category = "superhuman" THEN
                 4
             WHEN strength_category = "incalcuable" THEN
                 5
         END;
-- results: weak - 2, normal - 11, peak human - 15, superhuman - 22, incalcuable - 5

-- How many characters are classified under each speed category?
SELECT CASE
           WHEN speed = 1 THEN
               "below normal"
           WHEN speed = 2 THEN
               "normal"
           WHEN speed = 3 THEN
               "superhuman"
           WHEN speed = 4 THEN
               "speed of sound"
           WHEN speed = 5 THEN
               "supersonic"
           WHEN speed = 6 THEN
               "speed of light"
           WHEN speed = 7 THEN
               "warp speed"
       END AS speed_category,
       COUNT(*)
FROM marvels
GROUP BY speed_category
ORDER BY CASE
             WHEN speed_category = "below normal" THEN
                 1
             WHEN speed_category = "normal" THEN
                 2
             WHEN speed_category = "superhuman" THEN
                 3
             WHEN speed_category = "speed of sound" THEN
                 4
             WHEN speed_category = "supersonic" THEN
                 5
             WHEN speed_category = "speed of light" THEN
                 6
             WHEN speed_category = "warp speed" THEN
                 7
         END;
-- results: normal - 20, superhuman - 11, speed of sound - 3, supersonic - 4, warp speed - 12

-- How many characters are classified under each durability category?
SELECT CASE
           WHEN durability = 1 THEN
               "weak"
           WHEN durability = 2 THEN
               "normal"
           WHEN durability = 3 THEN
               "enhanced"
           WHEN durability = 4 THEN
               "regenerative"
           WHEN durability = 5 THEN
               "bulletproof"
           WHEN durability = 6 THEN
               "superhuman"
           WHEN durability = 7 THEN
               "virtually indestructible"
       END AS durability_category,
       COUNT(*)
FROM marvels
GROUP BY durability_category
ORDER BY CASE
             WHEN durability_category = "weak" THEN
                 1
             WHEN durability_category = "normal" THEN
                 2
             WHEN durability_category = "enhanced" THEN
                 3
             WHEN durability_category = "regenerative" THEN
                 4
             WHEN durability_category = "bulletproof" THEN
                 5
             WHEN durability_category = "superhuman" THEN
                 6
             WHEN durability_category = "virtually indestructible" THEN
                 7
         END;
-- results: weak - 1, normal - 9, enhanced - 11, regenerative - 9, bulletproof - 5, superhuman - 9, virtually indestructible - 6

-- How many characters are classified under each energy projection category?
SELECT CASE
           WHEN energy_projection = 1 THEN
               "none"
           WHEN energy_projection = 2 THEN
               "energy discharged at contact"
           WHEN energy_projection = 3 THEN
               "single energy type: short range and duration"
           WHEN energy_projection = 4 THEN
               "single energy type: medium range and duration"
           WHEN energy_projection = 5 THEN
               "single energy type: long range and duration"
           WHEN energy_projection = 6 THEN
               "multiple energy types"
           WHEN energy_projection = 7 THEN
               "virtually unlimited command of all types of energy"
       END AS energy_category,
       COUNT(*)
FROM marvels
GROUP BY energy_category
ORDER BY CASE
             WHEN energy_category = "none" THEN
                 1
             WHEN energy_category = "energy discharged at contact" THEN
                 2
             WHEN energy_category = "single energy type: short range and duration" THEN
                 3
             WHEN energy_category = "single energy type: medium range and duration" THEN
                 4
             WHEN energy_category = "single energy type: long range and duration" THEN
                 5
             WHEN energy_category = "multiple energy types" THEN
                 6
             WHEN energy_category = "virtually unlimited command of all types of energy" THEN
                 7
         END;
-- results: none - 15, discharged at contact - 3, short - 8, medium - 1, long - 4, multiple - 17, unlimited - 2

-- How many characters are classified under each fighting skills category?
SELECT CASE
           WHEN fighting_skills = 1 THEN
               "poor"
           WHEN fighting_skills = 2 THEN
               "normal"
           WHEN fighting_skills = 3 THEN
               "some training"
           WHEN fighting_skills = 4 THEN
               "experienced fighter"
           WHEN fighting_skills = 5 THEN
               "master of a single form of combat"
           WHEN fighting_skills = 6 THEN
               "master of several forms of combat"
           WHEN fighting_skills = 7 THEN
               "master of all forms of combat"
       END AS fighting_category,
       COUNT(*)
FROM marvels
GROUP BY fighting_category
ORDER BY CASE
             WHEN fighting_category = "poor" THEN
                 1
             WHEN fighting_category = "normal" THEN
                 2
             WHEN fighting_category = "some training" THEN
                 3
             WHEN fighting_category = "experienced fighter" THEN
                 4
             WHEN fighting_category = "master of a single form of combat" THEN
                 5
             WHEN fighting_category = "master of several forms of combat" THEN
                 6
             WHEN fighting_category = "master of all forms of combat" THEN
                 7
         END;
-- results: poor - 2, normal - 2, some training - 8, experienced fighter - 22, single form - 5, several forms - 8, all forms - 3

-- Which characters are good and are part of the top 10 most popular characters, ordered from most to least popular?
SELECT *
FROM marvels
WHERE alignment = "Good"
      AND popularity <= 10;
-- results: Spider-Man, Wolverine, Thor, Captain America, Black Panther, Doctor Strange, Black Widow, Captain Marvel

-- Which characters are bad or are at of the bottom 5 of popular characters, excluding characters from USA and ordered from most to least popular?SELECT *
FROM marvels
WHERE (
          alignment = "Bad"
          OR popularity >= 50
      )
      AND hometown != "USA";
-- results: Thanos, Doctor Doom, Mystique, Namor, Kang The Conqueror, Enchantress, Hela, Sin

-- Which characters are bad or are at of the bottom 5 of popular characters, excluding characters from USA and ordered from most to least popular?
SELECT *
FROM marvels
WHERE (
          durability > 5
          OR fighting_skills > 5
      )
      AND gender = "Female"
ORDER BY popularity;
-- results: Black Widow, Captain Marvel, Gamora, Hela, Mantis, Jean Grey, Moonstone, Elektra, Marrow
