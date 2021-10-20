-- RUN THIS file
-- Grant privliges to database user
ALTER USER labber WITH SUPERUSER;

--  1 CREATE table account
DROP TABLE IF EXISTS users CASCADE;
CREATE TABLE users (
  id SERIAL PRIMARY KEY NOT NULL,
  firt_name VARCHAR(255) NOT NULL,
  last_name VARCHAR(255) NOT NULL,
  password VARCHAR(255) NOT NULL,
  phone_number VARCHAR (255) NOT NULL,
  email VARCHAR(255) NOT NULL,
  street VARCHAR (255) NOT NULL,
  zip_code VARCHAR (255) NOT NULL,
  date_created DATE DEFAULT NOW(),
  active BOOLEAN DEFAULT TRUE,
  admin BOOLEAN DEFAULT FALSE
);

-- 2 CREATE favourites table  -- CREATE FK for prodcut key later
DROP TABLE IF EXISTS favourites CASCADE;
CREATE TABLE favourites (
  id SERIAL PRIMARY KEY NOT NULL,
  user_id INTEGER REFERENCES users(id)
  );


--- 3 create categories table
DROP TABLE IF EXISTS categories CASCADE;
CREATE TABLE categories (
  id SERIAL PRIMARY KEY NOT NULL,
  categorie_name VARCHAR (255) NOT NULL
  );


--  4 CREATE the PRODUCT table
DROP TABLE IF EXISTS products CASCADE;
CREATE TABLE products (
  id SERIAL PRIMARY KEY NOT NULL,
  category_id INTEGER REFERENCES categories(id),
  product_name VARCHAR(500) NOT NULL,
  model_year VARCHAR (255) NOT NULL,
  price INTEGER NOT NULL,
  image_url VARCHAR(255),
  description VARCHAR (500) NOT NULL,
  color VARCHAR (255) NOT NULL,
  size VARCHAR (255) NOT NULL,
  date_created DATE DEFAULT NOW(),
  sold BOOLEAN DEFAULT FALSE,
  active BOOLEAN DEFAULT TRUE
);

--- 5 CREATE the message table
DROP TABLE IF EXISTS message CASCADE;
CREATE TABLE message (
  id SERIAL PRIMARY KEY NOT NULL,
  user_id INTEGER REFERENCES users(id),
  product_id INTEGER REFERENCES products(id),
  msg_text VARCHAR(800),
  date_sent DATE DEFAULT NOW(),
  date_read DATE
  );

---6  ADDED FK in favourites
ALTER TABLE favourites
ADD product_id INTEGER REFERENCES products(id);





