CREATE TABLE users (
  id                    SERIAL PRIMARY KEY,
  username              TEXT NOT NULL UNIQUE,
  email                 TEXT NOT NULL UNIQUE CHECK (POSITION('@' IN email) > 1),
  password              TEXT NOT NULL,
  first_name            TEXT NOT NULL,
  last_name             TEXT NOT NULL,
  profile_img_url       TEXT
);

CREATE TABLE ebookUpload (
  id                    SERIAL PRIMARY KEY,
  user_id               INTEGER NOT NULL REFERENCES users(id) ON DELETE CASCADE,
  ebook_path            TEXT
);

CREATE TABLE ebookPost (
  id                    SERIAL PRIMARY KEY,
  user_id               INTEGER NOT NULL REFERENCES users(id) ON DELETE CASCADE,
  ebook_id              INTEGER NOT NULL REFERENCES ebookUpload(id) ON DELETE CASCADE,
  ebook_title           TEXT NOT NULL
);






