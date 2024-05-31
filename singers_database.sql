/** Project: Famous people
Lesson 3: Relational queries in SQL
In this project, you’re going to make your own table with some small set of “famous people”,
then make more tables about things they do and join those to create nice human readable lists.

For example, here are types of famous people and the questions your data could answer:
Movie stars: What movies are they in? Are they married to each other?
Singers: What songs did they write? Where are they from?
Authors: What books did they write?
Fictional characters: How are they related to other characters? What books do they show up in?
**/

/* Based on Google searches */
-- Table about singers' general information
CREATE TABLE singers_info
(
    id INTEGER PRIMARY KEY,
    name TEXT, -- name of singer
    gender TEXT, -- gender of singer
    birth_country TEXT, -- 3-letter abbreviation of birth country
    birth_month TEXT, -- birth month of singer
    age INTEGER -- current age of singer
);

INSERT INTO singers_info VALUES (1, "Jhene Aiko", "Female", "USA", "March", 36);
INSERT INTO singers_info VALUES (2, "Olivia Dean", "Female", "GBR", "November", 25);
INSERT INTO singers_info VALUES (3, "Daniel Caesar", "Male", "CAN", "April", 29);
INSERT INTO singers_info VALUES (4, "Elton John", "Male", "GBR", "March", 77);
INSERT INTO singers_info VALUES (5, "Beyonce", "Female", "USA", "September", 42);
INSERT INTO singers_info VALUES (6, "Dijon", "Male", "USA", "January", 31);
INSERT INTO singers_info VALUES (7, "Niki", "Female", "ISO", "January", 25);
INSERT INTO singers_info VALUES (8, "Jacky Cheung", "Male", "HKG", "July", 62);
INSERT INTO singers_info VALUES (9, "Kendrick Lamar", "Male", "USA", "June", 36);
INSERT INTO singers_info VALUES (10, "Rihanna", "Female", "BRB", "February", 36);
INSERT INTO singers_info VALUES (11, "Paul McCartney", "Male", "GBR", "June", 81);
INSERT INTO singers_info VALUES (12, "Shakira", "Female", "COL", "February", 47);
INSERT INTO singers_info VALUES (13, "Niall Horan", "Male", "IRL", "September", 30);
INSERT INTO singers_info VALUES (14, "D'Angelo", "Male", "USA", "February", 50);
INSERT INTO singers_info VALUES (15, "Jorja Smith", "Female", "GBR", "June", 26);
INSERT INTO singers_info VALUES (16, "Enrique Iglesias", "Male", "ESP", "May", 48);
INSERT INTO singers_info VALUES (17, "Diana Ross", "Female", "USA", "March", 80);
INSERT INTO singers_info VALUES (18, "Drake", "Male", "CAN", "October", 37);
INSERT INTO singers_info VALUES (19, "Sampha", "Male", "GBR", "November", 34);
INSERT INTO singers_info VALUES (20, "Peso Pluma", "Male", "MEX", "August", 24);
INSERT INTO singers_info VALUES (21, "Makoto Matsushita", "Male", "JPN", "June", 67);
INSERT INTO singers_info VALUES (22, "Tyla", "Female", "ZAF", "February", 22);
INSERT INTO singers_info VALUES (23, "Tems", "Female", "NGA", "July", 28);
INSERT INTO singers_info VALUES (24, "Lisa", "Female", "TCA", "March", 27);

/* Based on Google searches */
-- Table about singers' music career
CREATE TABLE singers_music 
(
    id INTEGER PRIMARY KEY,
    singer_id INTEGER, -- singer's id
    genre TEXT, -- genre of music the singer is most known for
    record_label TEXT -- record label(s) the singer is signed to currently
);

INSERT INTO singers_music VALUES (1, 1, "R&B", "Def Jam Recordings");
INSERT INTO singers_music VALUES (2, 2, "R&B, Pop", "EMI Records");
INSERT INTO singers_music VALUES (3, 3, "R&B, Soul", "Golden Child Recordings, Republic Records");
INSERT INTO singers_music VALUES (4, 4, "Pop, Rock", "Rocket Entertainment, Universal Music Group");
INSERT INTO singers_music VALUES (5, 5, "R&B, Pop, Country", "Parkwood Entertainment, Columbia Records");
INSERT INTO singers_music VALUES (6, 6, "R&B, Soul", "Dark Green, Dark Green, Warner Records");
INSERT INTO singers_music VALUES (7, 7, "Pop", "88rising Music, Empire Distribution");
INSERT INTO singers_music VALUES (8, 8, "Cantopop, Mandopop", "Universal Music Group");
INSERT INTO singers_music VALUES (9, 9, "Hip hop", "Top Dawg Entertainment, Aftermath Entertainment, Interscope Records");
INSERT INTO singers_music VALUES (10, 10, "R&B, Pop", "Roc Nation, Def Jam Recordings, Universal Music Group");
INSERT INTO singers_music VALUES (11, 11, "Pop, Rock", "Capitol Records");
INSERT INTO singers_music VALUES (12, 12, "Latin pop, Pop rock", "Sony Music Latin");
INSERT INTO singers_music VALUES (13, 13, "Pop, Folk", "Capitol Records, Columbia Records");
INSERT INTO singers_music VALUES (14, 14, "R&B, Soul", "RCA Records");
INSERT INTO singers_music VALUES (15, 15, "R&B, Soul", "FAMM");
INSERT INTO singers_music VALUES (16, 16, "Latin pop, Dance-pop", "Sony Music Latin");
INSERT INTO singers_music VALUES (17, 17, "R&B, Pop", "Motown, RCA Records");
INSERT INTO singers_music VALUES (18, 18, "Hip hop, Pop", "OVO Sound, Young Money Entertainment");
INSERT INTO singers_music VALUES (19, 19, "Electronic, Soul", "Young");
INSERT INTO singers_music VALUES (20, 20, "Pop, Latin", "Warner Music Latina");
INSERT INTO singers_music VALUES (21, 21, "Jazz, Funk", "Warner Music Japan");
INSERT INTO singers_music VALUES (22, 22, "R&B, Soul", "Epic Records");
INSERT INTO singers_music VALUES (23, 23, "R&B, Soul", "RCA Records");
INSERT INTO singers_music VALUES (24, 24, "K-Pop", "YG Entertainment");

/* Based on website: https://spotify.com/ with chart_number data from https://www.billboard.com/ */
-- Table about singers' discography (focusing on 3 latest albums released on Spotify)
CREATE TABLE singers_discography
(
    id INTEGER PRIMARY KEY,
    singer_id INTEGER, -- singer's id
    album_title TEXT, -- title of the album
    release_year INTEGER, -- release year of the album
    num_songs INTEGER, -- number of tracks included on the album
    collab_id INTEGER, -- an artist that's on the album that is also in the database
    chart_number INTEGER -- US Billboard 200's peak chart number
);

/* Jhene Aiko */
INSERT INTO singers_discography VALUES (1, 1, "Chilombo", 2020, 20, null, 2);
INSERT INTO singers_discography VALUES (2, 1, "Trip", 2017, 22, null, 5);
INSERT INTO singers_discography VALUES (3, 1, "Souled Out", 2014, 12, null, 3);
/* Olivia Dean */
INSERT INTO singers_discography VALUES (4, 2, "Messy", 2023, 12, null, null);
INSERT INTO singers_discography VALUES (5, 2, "Growth", 2021, 5, null, null);
/* Daniel Caesar */
INSERT INTO singers_discography VALUES (6, 3, "Case Study 01", 2019, 10, null, 17);
INSERT INTO singers_discography VALUES (7, 3, "Freudian", 2017, 10, null, 25);
INSERT INTO singers_discography VALUES (8, 3, "Pilgrim's Paradise", 2015, 7, null, null);
/* Elton John */
INSERT INTO singers_discography VALUES (9, 4, "Rock Of The Westies", 1975, 10, null, 1);
INSERT INTO singers_discography VALUES (10, 4, "Honky Chateau", 1972, 11, null, 1);
INSERT INTO singers_discography VALUES (11, 4, "Elton John", 1970, 13, null, 4);
/* Beyonce */
INSERT INTO singers_discography VALUES (12, 5, "Cowboy Carter", 2024, 27, null, 1);
INSERT INTO singers_discography VALUES (13, 5, "Renaissance", 2022, 16, 23, 1);
INSERT INTO singers_discography VALUES (14, 5, "Lemonade", 2016, 13, 9, 1);
/* Dijon */
INSERT INTO singers_discography VALUES (15, 6, "Absolutely", 2021, 12, null, null);
INSERT INTO singers_discography VALUES (16, 6, "How Do You Feel About Getting Married?", 2020, 6, null, null);
INSERT INTO singers_discography VALUES (17, 6, "Sci Fi 1", 2019, 7, null, null);
/* Niki */
INSERT INTO singers_discography VALUES (18, 7, "Nicole", 2022, 12, null, null);
INSERT INTO singers_discography VALUES (19, 7, "Moonchild", 2020, 10, null, null);
INSERT INTO singers_discography VALUES (20, 7, "Zephyr", 2018, 8, null, null);
/* Jacky Cheung */
INSERT INTO singers_discography VALUES (21, 8, "Private Corner", 2010, 10, null, null);
INSERT INTO singers_discography VALUES (22, 8, "The Goodbye Kiss", 1993, 10, null, null);
INSERT INTO singers_discography VALUES (23, 8, "You And I", 1993, 15, null, null);
/* Kendrick Lamar */
INSERT INTO singers_discography VALUES (24, 9, "DAMN.", 2017, 14, 10, 1);
INSERT INTO singers_discography VALUES (25, 9, "To Pimp a Butterfly", 2015, 16, null, 1);
INSERT INTO singers_discography VALUES (26, 9, "good kid, m.A.A.d city", 2012, 13, 18, 2);
/* Rihanna */
INSERT INTO singers_discography VALUES (27, 10, "Anti", 2016, 16, 18, 1);
INSERT INTO singers_discography VALUES (28, 10, "Unapologetic", 2012, 14, null, 1);
INSERT INTO singers_discography VALUES (29, 10, "Good Girl Gone Bad", 2007, 12, null, 2);
/* Paul McCartney from The Beatles */
INSERT INTO singers_discography VALUES (30, 11, "Band On The Run", 1973, 9, null, 1);
INSERT INTO singers_discography VALUES (31, 11, "Abbey Road", 1969, 17, null, 1);
INSERT INTO singers_discography VALUES (32, 11, "The Beatles", 1968, 30, null, 1);
/* Shakira */
INSERT INTO singers_discography VALUES (33, 12, "Shakira.", 2014, 15, 10, 2);
INSERT INTO singers_discography VALUES (34, 12, "Oral Fixation Vol. 2", 2005, 13, null, 5);
INSERT INTO singers_discography VALUES (35, 12, "Laundry Service", 2001, 13, null, 3);
/* Niall Horan from One Direction */
INSERT INTO singers_discography VALUES (36, 13, "Flicker", 2017, 13, null, 1);
INSERT INTO singers_discography VALUES (37, 13, "FOUR", 2014, 16, null, 1);
INSERT INTO singers_discography VALUES (38, 13, "Midnight Memories", 2013, 18, null, 1);
/* D'Angelo */ 
INSERT INTO singers_discography VALUES (39, 14, "Black Messiah", 2014, 12, null, 5);
INSERT INTO singers_discography VALUES (40, 14, "Voodoo", 2000, 13, null, 1);
INSERT INTO singers_discography VALUES (41, 14, "Brown Sugar", 1995, 10, null, 22);
/* Jorja Smith */
INSERT INTO singers_discography VALUES (42, 15, "falling or flying", 2023, 16, null, null);
INSERT INTO singers_discography VALUES (43, 15, "Lost & Found", 2018, 12, null, 41);
/* Enrique Iglesias */
INSERT INTO singers_discography VALUES (44, 16, "Sex and Love", 2014, 12, null, 8);
INSERT INTO singers_discography VALUES (45, 16, "Euphoria", 2010, 18, null, 10);
INSERT INTO singers_discography VALUES (46, 16, "Escape", 2001, 16, null, 2);
/* Diana Ross */
INSERT INTO singers_discography VALUES (47, 17, "Diana", 1980, 17, null, 2);
INSERT INTO singers_discography VALUES (48, 17, "Diana & Marvin", 1973, 20, null, 26);
INSERT INTO singers_discography VALUES (49, 17, "Diana Ross", 1970, 17, null, 19);
/* Drake */
INSERT INTO singers_discography VALUES (50, 18, "Views", 2016, 20, 10, 1);
INSERT INTO singers_discography VALUES (51, 18, "If You're Reading This It's Too Late", 2015, 17, null, 1);
INSERT INTO singers_discography VALUES (52, 18, "Take Care", 2011, 19, 9, 1);
/* Sampha */
INSERT INTO singers_discography VALUES (53, 19, "Lahai", 2023, 14, null, null);
INSERT INTO singers_discography VALUES (54, 19, "Process", 2017, 10, null, 51);
/* Peso Pluma */
INSERT INTO singers_discography VALUES (55, 20, "Genesis", 2023, 17, null, 3);
INSERT INTO singers_discography VALUES (56, 20, "Ah Y Que?", 2023, 12, null, null);
INSERT INTO singers_discography VALUES (57, 20, "Efectos Secundarios", 2021, 8, null, null);
/* Makoto Matsushita */
INSERT INTO singers_discography VALUES (58, 21, "Visions", 2019, 12, null, null);
INSERT INTO singers_discography VALUES (59, 21, "The Pressures and the Pleasures", 1982, 9, null, null);
INSERT INTO singers_discography VALUES (60, 21, "First Light", 1982, 10, null, null);
/* Tyla */
INSERT INTO singers_discography VALUES (61, 22, "Tyla", 2024, 8, 23, 24);
/* Tems */
INSERT INTO singers_discography VALUES (62, 23, "If Orange Was a Place", 2021, 5, null, null);
INSERT INTO singers_discography VALUES (63, 23, "For Broken Ears", 2020, 7, null, null);
/* Lisa from Blackpink */
INSERT INTO singers_discography VALUES (64, 24, "Born Pink", 2022, 8, null, 1);
INSERT INTO singers_discography VALUES (65, 24, "The Album", 2020, 8, null, 2);
INSERT INTO singers_discography VALUES (66, 24, "Kill This Love", 2019, 5, null, 24);

-- List about singers and their general information (gender, country of origin, birth month and age)
SELECT *
FROM singers_info
ORDER BY age;

-- List singers and their music information (genre and label record), organized by their genre
SELECT singers_info.name,
       singers_music.genre,
       singers_music.record_label
FROM singers_music
    JOIN singers_info
        ON singers_info.id = singers_music.singer_id
ORDER BY genre;

-- List singers and their discography (album titles, release year, number of songs and chart number on Billboard), ordered by each singer and from most recent to least
SELECT singers_info.name,
       singers_discography.album_title,
       singers_discography.release_year,
       singers_discography.num_songs,
       singers_discography.chart_number
FROM singers_discography
    JOIN singers_info
        ON singers_info.id = singers_discography.singer_id
ORDER BY singers_info.name,
         singers_discography.release_year DESC;

-- List albums that have collaborations with other artists in the database
SELECT a.name,
       singers_discography.album_title,
       b.name AS feature
FROM singers_discography
    JOIN singers_info a
        ON singers_discography.singer_id = a.id
    JOIN singers_info b
        ON singers_discography.collab_id = b.id
ORDER BY a.name;

-- List each artist's highest charting album
SELECT singers_info.name,
       singers_discography.album_title,
       MAX(singers_discography.chart_number) AS highest_chart_number
FROM singers_info
    JOIN singers_discography
        ON singers_info.id = singers_discography.singer_id
WHERE singers_discography.chart_number IS NOT NULL
GROUP BY singers_info.name
ORDER BY highest_chart_number;
