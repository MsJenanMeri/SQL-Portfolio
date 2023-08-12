CREATE TABLE video_games (ID INTEGER PRIMARY KEY, name TEXT, cost integer, genre TEXT, rating integer);

INSERT INTO video_games VALUES (1, 'Call of Duty', 40, 'Action', 9)
INSERT INTO video_games VALUES (2, 'Legend Of Zelda Tears of the Kingdom', 70, 'Adventure', 10)
INSERT INTO video_games VALUES (3, 'Mario Kart 8', 60, 'Racing', 8)
INSERT INTO video_games VALUES (4, 'Sonic', 30, 'Adventure', 7)
INSERT INTO video_games VALUES (5, 'Pokemon', 30, 'Adventure', 8)
INSERT INTO video_games VALUES (6, 'Animal Crossing', 50, 'Adventure', 10)
INSERT INTO video_games VALUES (7, 'Super Mario Odyssey', 60, 'Adventure', 9)
INSERT INTO video_games VALUES (8, 'Grand Theft Auto', 60, 'Action', 7)
INSERT INTO video_games VALUES (9, 'Mario Party 10', 40, 'Party', 9)
INSERT INTO video_games VALUES (10, 'Fortnite', 0, 'Action', 8)
INSERT INTO video_games VALUES (11, 'The Sims', 30, 'Action', 6)
INSERT INTO video_games VALUES (12, 'Minecraft', 30, 'Action', 8)
INSERT INTO video_games VALUES (13, 'Super Mario Galaxy', 60, 'Action', 10)
INSERT INTO video_games VALUES (14, 'Super Mario Galaxy 2', 60, 'Action', 10)

-- Displaying table

SELECT *
FROM video_games

-- Order all items from most to least expensive

SELECT name, cost
FROM video_games
ORDER BY cost DESC

-- Order all items by the highest ratings (ratings out of 10)

SELECT name, rating
FROM video_games
ORDER BY rating DESC

-- Which video games cost less than or equal to 40 dollars?

SELECT name, cost
FROM video_games
WHERE cost <= 40

-- Which video games cost less than or equal to 40 dollars and the genre is Adventure?

SELECT name, cost, genre
FROM video_games
WHERE cost <= 40 AND genre LIKE '%Adventure%'

-- Which video games are part of the Mario series

SELECT *
FROM video_games
WHERE name LIKE '%Mario%'