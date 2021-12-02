-- Show Database --
SHOW DATABASES;

-- Create Database --
CREATE DATABASE bookstore;

-- Using Database --
USE bookstore;

-- Show Tables --
SHOW Tables;

-- Create Table --
CREATE TABLE books
(
    id INT AUTO_INCREMENT PRIMARY KEY,
    author1 VARCHAR(100) NOT NULL,
    author2 VARCHAR(100),
    author3 VARCHAR(100),
    title VARCHAR(100),
    description TEXT,
    place_sell CHAR(3),
    stock INT DEFAULT(0),
    creation_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

-- Add New Column --
ALTER TABLE books
ADD price INT DEFAULT(0),
    status ENUM('available', 'out of stock', 'limited');

-- Delete Column --
ALTER TABLE books
DROP COLUMN place_sell;

-- Insert Data --
INSERT INTO books (author1, author2, author3, title, description, stock, price, status)
    VALUES 
    (
        'Salsa', 'Win', 'Diana', 'Cinta Segitiga', 'buku ini menceritakan cinta Salsa yang bertepuk sebelah tangan',
        5, 75000, 'limited'
    ), 
    (
        'Putri', 'Gita', 'Fitria', 'Persahabatan', 'buku ini menceritakan persahabatan yang berantakan',
        15, 50000, 'available'
    ),
    (
        'Udin', 'Echi', 'Asep', 'Laskar Matahari', 'Buku ini menceritakan kisah sukses cecep sianak desa',
        10, 80000, 'available '
    );

-- SELECT semua row pada table books --
SELECT * from books;

-- Select Alias --
SELECT id AS ID, author1 AS A1, author2 AS A2, author3 AS A3 from books;

-- SELECT data menggunakan WHERE untuk id tertentu-- 
SELECT * FROM books WHERE id = 2;

-- SELECT data menggunakan WHERE untuk dengan operator logical AND --
SELECT * FROM books WHERE ID = 2 and author1 = 'Putri' ;

-- SELECT data menggunakan WHERE untuk dengan operator logical OR --
SELECT * FROM books ID = 3 OR author2 = 'Echi' ;

-- SELECT data menggunakan WHERE untuk dengan operator logical NOT --
SELECT * FROM books WHERE NOT id = 1;

-- SELECT seluruh column dari table bookstore dan diurutkan secara ASC berdasarkan id --
SELECT * FROM books ORDER BY id ASC;

-- SELECT seluruh column dan berikan LIMIT untuk 2 row saja --
SELECT * FROM books LIMIT 2;

--Pilih 1 row untuk dilakukan UPDATE pada column author1 dan price --
UPDATE books
SET author1 = 'Chaca' price = 35000
WHERE id = 3;

-- Pilih 1 row untuk dilakukan DELETE -- 
DELETE FROM books
WHERE id = 1;
