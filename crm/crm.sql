-- Drops existing tables, so we start fresh with each
-- run of this script
-- e.g. DROP TABLE IF EXISTS ______;

DROP TABLE IF EXISTS salespeople;
DROP TABLE IF EXISTS companies;
DROP TABLE IF EXISTS clients;
DROP TABLE IF EXISTS activities;


-- CREATE TABLES
CREATE TABLE salespeople (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  first_name TEXT,
  last_name TEXT,
  email TEXT,
  phone TEXT
);

CREATE TABLE companies (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name TEXT,
  description TEXT
);

CREATE TABLE clients (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  company_id INTEGER,
  first_name TEXT,
  last_name TEXT,
  job_title TEXT,
  email TEXT,
  phone TEXT
);

CREATE TABLE activities (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  salesperson_id INTEGER,
  client_id INTEGER,
  contact_type TEXT,
  contact_time DATETIME,
  notes TEXT
);