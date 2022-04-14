DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS posts;
DROP TABLE IF EXISTS likes;
DROP TABLE IF EXISTS comments;
DROP TABLE IF EXISTS follows;
DROP TABLE IF EXISTS feeds;


-- CREATE TABLES
CREATE TABLE users (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  first_name TEXT,
  last_name TEXT,
  username TEXT,
  email TEXT,
  phone TEXT,
  location TEXT,
  created_at DATETIME,
  updated_at DATETIME
);

CREATE TABLE posts (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  user_id INTEGER,
  image_url TEXT,
  description TEXT,
  phone TEXT,
  created_at DATETIME,
  updated_at DATETIME
);

CREATE TABLE likes (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  post_id INTEGER,
  liking_user_id INTEGER,
  is_active BOOLEAN,
  created_at DATETIME,
  updated_at DATETIME
);

CREATE TABLE comments (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  post_id INTEGER,
  commenter_id INTEGER,
  comment TEXT,
  created_at DATETIME,
  updated_at DATETIME
);

CREATE TABLE follows (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  follower_id INTEGER,
  followed_id INTEGER,
  is_active BOOLEAN,
  created_at DATETIME,
  updated_at DATETIME
);

CREATE TABLE feeds (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  user_id INTEGER,
  post_id INTEGER,
  created_at DATETIME
);