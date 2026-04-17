INSERT INTO genre (name) VALUES
  ('Rock'),
  ('Pop'),
  ('Hip-Hop'),
  ('Jazz');

INSERT INTO artist (name) VALUES
  ('Eminem'),
  ('Madonna'),
  ('Кино'),
  ('Imagine Dragons'),
  ('Adele');

INSERT INTO artist_genre (artist_id, genre_id) VALUES
  (1, 3),  -- Eminem -> Hip-Hop
  (2, 2),  -- Madonna -> Pop
  (3, 1),  -- Кино -> Rock
  (4, 1),  -- Imagine Dragons -> Rock
  (4, 2),  -- Imagine Dragons -> Pop
  (5, 2),  -- Adele -> Pop
  (5, 4);  -- Adele -> Jazz

INSERT INTO album (title, release_year) VALUES
  ('Kamikaze', 2018),
  ('Madame X', 2019),
  ('Группа крови', 1988),
  ('Evolve', 2017),
  ('30', 2021),
  ('Mercury', 2020);

INSERT INTO album_artist (album_id, artist_id) VALUES
  (1, 1),  -- Kamikaze -> Eminem
  (2, 2),  -- Madame X -> Madonna
  (3, 3),  -- Группа крови -> Кино
  (4, 4),  -- Evolve -> Imagine Dragons
  (5, 5),  -- 30 -> Adele
  (6, 4);  -- Mercury -> Imagine Dragons

INSERT INTO track (title, duration, album_id) VALUES
  ('The Ringer', 330, 1),
  ('Lucky You', 255, 1),
  ('Мой друг', 245, 3),
  ('Группа крови', 270, 3),
  ('Believer', 204, 4),
  ('Thunder', 187, 4),
  ('My Oh My', 210, 2),
  ('Easy On Me', 340, 5),
  ('Oh my God', 225, 5),
  ('Wrecked', 250, 6),
  ('Follow You', 175, 6),
  ('Ciao Bella', 190, 2),
  ('my own', 180, 1),
  ('own my', 181, 1),
  ('my', 182, 1),
  ('oh my god', 183, 1),
  ('myself', 184, 1),
  ('by myself', 185, 1),
  ('bemy self', 186, 1),
  ('myself by', 187, 1),
  ('by myself by', 188, 1),
  ('beemy', 189, 1),
  ('premyne', 190, 1);

INSERT INTO compilation (name, release_year) VALUES
  ('Лучшие хиты 2018', 2018),
  ('Top Hits 2019', 2019),
  ('Platinum Collection 2020', 2020),
  ('Golden Mix 2021', 2021),
  ('Rock Legends', 2017);

INSERT INTO compilation_track (compilation_id, track_id) VALUES
  (1, 1),   -- Лучшие хиты 2018 -> The Ringer
  (1, 5),   -- Лучшие хиты 2018 -> Believer
  (2, 7),   -- Top Hits 2019 -> My Oh My
  (2, 2),   -- Top Hits 2019 -> Lucky You
  (3, 10),  -- Platinum Collection 2020 -> Wrecked
  (3, 8),   -- Platinum Collection 2020 -> Easy On Me
  (4, 8),   -- Golden Mix 2021 -> Easy On Me
  (4, 9),   -- Golden Mix 2021 -> Oh my God
  (5, 4),   -- Rock Legends -> Группа крови
  (5, 5),   -- Rock Legends -> Believer
  (5, 6);   -- Rock Legends -> Thunder