-- ================
-- Задание 2
-- ================ 
SELECT title, duration
FROM track
ORDER BY duration DESC
LIMIT 1;

SELECT title, duration
FROM track
WHERE duration >= 210;

SELECT name, release_year
FROM compilation
WHERE release_year BETWEEN 2018 AND 2020;

SELECT name
FROM artist
WHERE name NOT LIKE '% %';

SELECT title
FROM track
WHERE LOWER(title) LIKE '%my%'
   OR LOWER(title) LIKE '%мой%';


-- ================
-- Задание 3
-- ================
SELECT g.name AS genre, COUNT(ag.artist_id) AS artist_count
FROM genre g
JOIN artist_genre ag ON g.genre_id = ag.genre_id
GROUP BY g.name
ORDER BY artist_count DESC;

SELECT COUNT(t.track_id) AS track_count
FROM track t
JOIN album a ON t.album_id = a.album_id
WHERE a.release_year BETWEEN 2019 AND 2020;

SELECT a.title AS album,
       ROUND(AVG(t.duration), 2) AS avg_duration_sec
FROM album a
JOIN track t ON a.album_id = t.album_id
GROUP BY a.title
ORDER BY avg_duration_sec DESC;

SELECT ar.name
FROM artist ar
WHERE ar.artist_id NOT IN (
    SELECT aa.artist_id
    FROM album_artist aa
    JOIN album a ON aa.album_id = a.album_id
    WHERE a.release_year = 2020
);

SELECT DISTINCT c.name
FROM compilation c
JOIN compilation_track ct ON c.compilation_id = ct.compilation_id
JOIN track t ON ct.track_id = t.track_id
JOIN album a ON t.album_id = a.album_id
JOIN album_artist aa ON a.album_id = aa.album_id
JOIN artist ar ON aa.artist_id = ar.artist_id
WHERE ar.name = 'Eminem';