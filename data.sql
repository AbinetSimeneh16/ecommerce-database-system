INSERT INTO Categories (category_name)
VALUES
('Electronics'),
('Books'),
('Clothing'),
('Home Appliances'),
('Sports');

INSERT INTO Products (category_id, product_name, price, stock_quantity)
VALUES
(1, 'iPhone 15 Pro Max', 1500, 10),
(1, 'Samsung Galaxy S24', 1200, 8),
(2, 'Python Programming Book', 120, 15),
(2, 'Database Systems Book', 200, 5),
(3, 'Nike Hoodie', 300, 12),
(3, 'Adidas Sneakers', 450, 7),
(4, 'LG Refrigerator', 2500, 3),
(4, 'Microwave Oven', 700, 4),
(5, 'Football', 150, 20),
(5, 'Tennis Racket Pro', 850, 6);

INSERT INTO Customers (first_name, last_name, email, city)
VALUES
('Abel', 'Tesfaye', 'abel@gmail.com', 'Addis Ababa'),
('Sara', 'Tadesse', 'sara@gmail.com', 'Nairobi'),
('John', 'Smith', 'john@gmail.com', 'Kampala'),
('Martha', 'Teklu', 'martha@gmail.com', 'Addis Ababa'),
('Daniel', 'Brown', 'daniel@gmail.com', 'Kigali');

INSERT INTO Orders (customer_id, order_date)
VALUES
(1, '2025-08-01'),
(1, '2025-08-05'),
(2, '2025-08-02'),
(3, '2025-08-03'),
(3, '2025-08-04'),
(4, '2025-08-06'),
(1, '2025-08-07'),
(2, '2025-08-08'),
(4, '2025-08-09'),
(1, '2025-08-10');

INSERT INTO Order_Items (order_id, product_id, quantity)
VALUES
(1, 1, 1),
(1, 3, 2),
(2, 5, 1),
(3, 2, 1),
(4, 7, 1),
(5, 10, 2),
(6, 9, 3),
(7, 4, 1),
(8, 6, 2),
(9, 8, 1);