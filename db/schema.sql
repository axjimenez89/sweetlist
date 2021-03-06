DROP TABLE IF EXISTS saved;
DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS items;

CREATE TABLE users(
  id SERIAL PRIMARY KEY,
  email VARCHAR(255) UNIQUE,
  password_digest VARCHAR(255)
);

CREATE TABLE items(
  id SERIAL PRIMARY KEY,
  image VARCHAR NOT NULL,
  price VARCHAR NOT NULL,
  title VARCHAR NOT NULL
);

CREATE TABLE saved(
    id SERIAL PRIMARY KEY,
    email VARCHAR REFERENCES users(email) NOT NULL,
    title VARCHAR NOT NULL,
    price VARCHAR NOT NULL,
    image VARCHAR NOT NULL
);
