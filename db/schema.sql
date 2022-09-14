CREATE DATABASE know_the_world_db;
\c know_the_word_db

CREATE TABLE travels(
    id SERIAL PRIMARY KEY,
    city TEXT,
    country TEXT,
    title TEXT,
    image_url TEXT
  );

INSERT INTO travels(city, country, title, image_url, description)
VALUES('Rio de Janeiro', 'Brazil', 'Wonderful City', 'https://images.unsplash.com/photo-1483729558449-99ef09a8c325?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2340&q=80', 'It was an amazing trip.');

SELECT * FROM travels;

CREATE TABLE users(
  id SERIAL PRIMARY KEY,
  first_name TEXT,
  last_name TEXT,
  email TEXT,
  password_digest TEXT
);

SELECT * FROM users;

ALTER TABLE travels ADD COLUMN description TEXT;
