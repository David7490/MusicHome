CREATE TABLE genre (
  genre_id SERIAL PRIMARY KEY,
  name VARCHAR(100) NOT NULL,
  CONSTRAINT genre_name_not_empty CHECK (LENGTH(TRIM(name)) > 0),
  CONSTRAINT genre_name_unique UNIQUE (name)
);

CREATE TABLE artist (
  artist_id SERIAL PRIMARY KEY,
  name VARCHAR(200) NOT NULL,
  CONSTRAINT artist_name_not_empty CHECK (LENGTH(TRIM(name)) > 0),
  CONSTRAINT artist_name_unique UNIQUE (name)
);

CREATE TABLE album (
  album_id SERIAL PRIMARY KEY,
  title VARCHAR(200) NOT NULL,
  release_year INT NOT NULL,
  CONSTRAINT album_title_not_empty CHECK (LENGTH(TRIM(title)) > 0),
  CONSTRAINT album_year_valid CHECK (release_year BETWEEN 1900 AND 2100)
);

CREATE TABLE compilation (
  compilation_id SERIAL PRIMARY KEY,
  name VARCHAR(200) NOT NULL,
  release_year INT NOT NULL,
  CONSTRAINT compilation_name_not_empty CHECK (LENGTH(TRIM(name)) > 0),
  CONSTRAINT compilation_year_valid CHECK (release_year BETWEEN 1900 AND 2100)
);

CREATE TABLE track (
  track_id SERIAL PRIMARY KEY,
  title VARCHAR(200) NOT NULL,
  duration INT NOT NULL,
  album_id INT NOT NULL,
  CONSTRAINT track_title_not_empty CHECK (LENGTH(TRIM(title)) > 0),
  CONSTRAINT track_duration_positive CHECK (duration > 0),
  CONSTRAINT track_duration_max CHECK (duration <= 7200),
  FOREIGN KEY (album_id) REFERENCES album(album_id)
    ON DELETE CASCADE
);

CREATE TABLE artist_genre (
  artist_id INT NOT NULL,
  genre_id INT NOT NULL,
  PRIMARY KEY (artist_id, genre_id),
  FOREIGN KEY (artist_id) REFERENCES artist(artist_id)
    ON DELETE CASCADE,
  FOREIGN KEY (genre_id) REFERENCES genre(genre_id)
    ON DELETE CASCADE
);

CREATE TABLE album_artist (
  album_id INT NOT NULL,
  artist_id INT NOT NULL,
  PRIMARY KEY (album_id, artist_id),
  FOREIGN KEY (album_id) REFERENCES album(album_id)
    ON DELETE CASCADE,
  FOREIGN KEY (artist_id) REFERENCES artist(artist_id)
    ON DELETE CASCADE
);

CREATE TABLE compilation_track (
  compilation_id INT NOT NULL,
  track_id INT NOT NULL,
  PRIMARY KEY (compilation_id, track_id),
  FOREIGN KEY (compilation_id) REFERENCES compilation(compilation_id)
    ON DELETE CASCADE,
  FOREIGN KEY (track_id) REFERENCES track(track_id)
    ON DELETE CASCADE
);