-- creating user for db
CREATE USER admin WITH PASSWORD 'Userpass0';
-- creating db
CREATE DATABASE prod_db;
-- give access to the database
GRANT ALL PRIVILEGES ON DATABASE prod_db TO admin;

