-- Assignment #1
-- Name: Syed Muhammad Haris
-- Seat NO:B23110106068
-- Database: library_db

-- 1: Create Database
CREATE DATABASE library_db;

-- 2: Create books Table
CREATE TABLE books (
    book_id SERIAL PRIMARY KEY,
    title VARCHAR(100),
    author VARCHAR(100),
    year_published INT,
    isAvailable BOOLEAN,
    price NUMERIC(8,2),
    publication VARCHAR(100)
);

-- 3: Insert 15 Sample Books
INSERT INTO books (title, author, year_published, isAvailable, price, publication)
VALUES

('1984', 'George Orwell', 1949, TRUE, 300.00, 'Penguin'),
('Modern Science', 'Albert Khan', 2005, FALSE, 600.00, 'XYZ'),
('Learning SQL', 'Mark Taylor', 2021, TRUE, 550.00, 'XYZ'),
('The Secret World', 'Nora Green', 2010, TRUE, 700.00, 'LMN'),
('Data Structures', 'Jane Doe', 2003, TRUE, 500.00, 'XYZ'),
('The Great Book', 'John Smith', 1999, TRUE, 450.00, 'ABC Publications'),
('Artificial Intelligence', 'Alan Turing', 2019, FALSE, 1200.00, 'TechBooks'),
('Clean Code', 'Robert Martin', 2008, TRUE, 999.00, 'Prentice Hall'),
('Flutter for Beginners', 'Sarah Khan', 2022, TRUE, 850.00, 'XYZ'),
('History of Time', 'Stephen Hawking', 1988, TRUE, 400.00, 'LMN'),
('The Coding Life', 'James Bond', 2017, TRUE, 620.00, 'ABC Publications'),
('Digital Future', 'Elon Musk', 2020, FALSE, 750.00, 'XYZ'),
('Ocean Mysteries', 'Anna Blue', 2001, TRUE, 580.00, 'BlueWave'),
('Quantum Physics', 'Neil Bohr', 2006, TRUE, 1100.00, 'XYZ'),
('Web Development 101', 'Rayyan', 2023, TRUE, 500.00, 'XYZ');

-- 4.1: Select all books published after 2000
SELECT * 
FROM books
WHERE year_published > 2000;

--  4.2: Select books with price < 599.00, ordered by price DESC
SELECT * 
FROM books
WHERE price < 599.00
ORDER BY price DESC;

--  4.3: Select top 3 most expensive books
SELECT * 
FROM books
ORDER BY price DESC
LIMIT 3;

--  4.4: Select 2 books, skipping the first 2, ordered by year_published DESC
SELECT * 
FROM books
ORDER BY year_published DESC
OFFSET 2
LIMIT 2;

-- 4.5: Select all books of publication 'XYZ' ordered by title ASC
SELECT * 
FROM books
WHERE publication = 'XYZ'
ORDER BY title ASC;
