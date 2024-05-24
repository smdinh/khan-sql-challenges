/** Project: Design a store database
Create my own store.
My store should sell one type of things, like clothing or bikes, whatever you want your store to specialize in.
I should have a table for all the items in your store, and at least 5 columns for the kind of data I think I'd need to store.
I should sell at least 15 items, and use select statements to order your items by price and show at least one statistic about the items.
**/

/* My Store: Fruit Haven
Mangosteen - $8.99/lb
Korean Pear - $1.49/lb
Persimmon - $2.99/lb
Dragon Fruit - $4.99/lb
Lychee - $5.99/lb
Longan - $4.49/lb
Pomelo - $3.29/lb
Mandarin - $1.99/lb
Durian - $9.99/lb
Watermelon - $0.59/lb
Cantaloupe - $0.79/lb
Papaya - $1.99/lb
Strawberry - $3.99/lb
Cherry - $4.99/lb
Grapes - $2.49/lb
Banana - $0.59/lb
Fuji Apple - $1.99/lb
Guava - $2.49/lb
Mango - $1.99/lb
Star Fruit - $3.49/lb
Jackfruit - $3.99/lb
*/

-- Step 1: Create a table with at least 5 columns
CREATE TABLE fruit_haven (
  id INTEGER PRIMARY KEY, -- Unique identifer of fruit. 
  name TEXT, -- The name of the fruit.
  origin TEXT, -- The country of origin of where the fruit came from. 
  price_per_pound NUMERIC, -- The price per 1 pound of the fruit.
  in_stock INTEGER, -- The quantity of fruits available in the store at the beginning of the week.
  purchased INTEGER  -- The quantity of fruits purchased during the week.
);

-- Step 2: Fill database with values
INSERT INTO fruit_haven VALUES (1, "Mangosteen", "Thailand", 8.99, 50, 25);
INSERT INTO fruit_haven VALUES (2, "Korean Pear", "South Korea", 1.49, 100, 75);
INSERT INTO fruit_haven VALUES (3, "Persimmon", "USA", 2.99, 80, 60);
INSERT INTO fruit_haven VALUES (4, "Dragon Fruit", "Vietnam", 4.99, 70, 45);
INSERT INTO fruit_haven VALUES (5, "Lychee", "Mexico", 5.99, 60, 40);
INSERT INTO fruit_haven VALUES (6, "Longan", "Thailand", 4.49, 70, 50);
INSERT INTO fruit_haven VALUES (7, "Pomelo", "China", 3.29, 60, 30);
INSERT INTO fruit_haven VALUES (8, "Mandarin", "USA", 1.99, 120, 90);
INSERT INTO fruit_haven VALUES (9, "Durian", "Thailand", 9.99, 30, 20);
INSERT INTO fruit_haven VALUES (10, "Watermelon", "USA", 0.59, 149, 96);
INSERT INTO fruit_haven VALUES (11, "Cantaloupe", "USA", 0.79, 100, 74);
INSERT INTO fruit_haven VALUES (12, "Papaya", "Mexico", 1.99, 100, 80);
INSERT INTO fruit_haven VALUES (13, "Strawberry", "USA", 3.99, 150, 100);
INSERT INTO fruit_haven VALUES (14, "Cherry", "USA", 4.99, 120, 80);
INSERT INTO fruit_haven VALUES (15, "Grapes", "USA", 2.49, 180, 130);
INSERT INTO fruit_haven VALUES (16, "Banana", "Ecuador", 0.59, 250, 200);
INSERT INTO fruit_haven VALUES (17, "Fuji Apple", "Japan", 1.99, 200, 164);
INSERT INTO fruit_haven VALUES (18, "Guava", "Mexico", 2.49, 76, 68);
INSERT INTO fruit_haven VALUES (19, "Mango", "Mexico", 1.99, 119, 93);
INSERT INTO fruit_haven VALUES (20, "Star Fruit", "Vietnam", 3.49, 69, 49);
INSERT INTO fruit_haven VALUES (21, "Jackfruit", "Thailand", 3.99, 53, 36);

-- Step 3: Order your items by price
SELECT *
FROM fruit_haven
ORDER BY price_per_pound;

-- Step 4: Stats
-- Number of fruits in stock
Select SUM(in_stock) AS total_fruits_in_stock
FROM fruit_haven;
-- Revenue generated
Select SUM(price_per_pound*purchased) AS total_revenue
FROM fruit_haven;
-- Total purchases by origin
Select origin, SUM(purchased) AS total_purchased
FROM fruit_haven
GROUP BY origin;
