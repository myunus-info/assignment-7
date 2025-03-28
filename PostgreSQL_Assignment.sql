-- Create books table
CREATE TABLE books (
    id SERIAL PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    author VARCHAR(255) NOT NULL,
    price DECIMAL(10,2) CHECK (price >= 0) NOT NULL,
    stock INT CHECK (stock >= 0) NOT NULL,
    published_year INT CHECK (published_year >= 0)
);

-- Create customers table
CREATE TABLE customers (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    joined_date DATE DEFAULT CURRENT_DATE
);

-- Create orders table
CREATE TABLE orders (
	id SERIAL PRIMARY KEY,
	customer_id INT REFERENCES customers(id) ON DELETE CASCADE,
	book_id INT REFERENCES books(id) ON DELETE CASCADE,
	quantity INT CHECK (quantity > 0) NOT NULL,
	order_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Insert data into books table
INSERT INTO books (title, author, price, stock, published_year)
VALUES
('The Great Gatsby', 'F. Scott Fitzgerald', 12.99, 10, 1925),
('To Kill a Mockingbird', 'Harper Lee', 15.50, 8, 1960),
('1984', 'George Orwell', 10.99, 5, 1949),
('Moby-Dick', 'Herman Melville', 17.75, 3, 1851),
('Pride and Prejudice', 'Jane Austen', 9.99, 12, 1813);

-- Insert data into customers table
INSERT INTO customers (name, email)
VALUES
('John Doe', 'johndoe@example.com'),
('Jane Smith', 'janesmith@example.com'),
('Alice Johnson', 'alicejohnson@example.com'),
('Bob Brown', 'bobbrown@example.com'),
('Charlie Davis', 'charliedavis@example.com');

-- Insert data into orders table
INSERT INTO orders (customer_id, book_id, quantity)
VALUES
(1, 2, 1), 
(2, 3, 2),
(3, 1, 1), 
(4, 5, 3),
(5, 4, 1); 

-- Find books that are out of stock
SELECT title
FROM books
WHERE stock = 0

-- Retrieve the most expensive book in the store
SELECT *
FROM books
ORDER BY price DESC
LIMIT 1

-- Find the total number of orders placed by each customer
SELECT name, COUNT(*) AS total_orders
FROM orders
JOIN customers
ON customers.id = orders.customer_id
GROUP BY name

-- Calculate the total revenue generated from book sales
SELECT SUM(price * quantity) AS total_revenue
FROM orders
JOIN books
ON books.id = orders.book_id

-- List all customers who have placed more than one order
SELECT c.name, COUNT(o.id) AS orders_count
FROM orders o
JOIN customers c ON c.id = o.customer_id
GROUP BY c.name
HAVING COUNT(o.id) > 1

-- Find the average price of books in the store
SELECT ROUND(AVG(price), 2) AS avg_book_price
FROM books

-- Increase the price of all books published before 2000 by 10%
UPDATE books
SET price = ROUND(price * 1.1, 2)
WHERE published_year < 2000

-- Delete customers who haven't placed any orders
DELETE FROM customers
WHERE id NOT IN (SELECT DISTINCT customer_id FROM orders)