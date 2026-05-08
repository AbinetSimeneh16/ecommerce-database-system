-- Task 1
SELECT first_name, email
FROM Customers
WHERE city IN ('Addis Ababa', 'Nairobi')
AND last_name LIKE 'T%';
-- Task 2
SELECT *
FROM Products
WHERE price BETWEEN 100 AND 800
AND stock_quantity > 5;
-- Task 3
SELECT *
FROM Products
WHERE product_name LIKE '%Pro%'
OR product_name LIKE '%Max%';
-- Task 4
SELECT Orders.order_id,
       Customers.first_name,
       Customers.email
FROM Orders
JOIN Customers
ON Orders.customer_id = Customers.customer_id;
-- Task 5
SELECT Products.product_name
FROM Products
LEFT JOIN Order_Items
ON Products.product_id = Order_Items.product_id
WHERE Order_Items.product_id IS NULL;
INSERT INTO Products (category_id, product_name, price, stock_quantity)
VALUES (1, 'Gaming Laptop', 3000, 5);
SELECT Products.product_name
FROM Products
LEFT JOIN Order_Items
ON Products.product_id = Order_Items.product_id
WHERE Order_Items.product_id IS NULL;
-- Task 6
SELECT *
FROM Customers c
WHERE EXISTS (
    SELECT 1
    FROM Orders o
    WHERE o.customer_id = c.customer_id
);
-- Task 7
SELECT Categories.category_name,
       COUNT(Products.product_id) AS total_products
FROM Categories
JOIN Products
ON Categories.category_id = Products.category_id
GROUP BY Categories.category_name;
-- Task 8
SELECT Categories.category_name,
       SUM(Products.price * Order_Items.quantity) AS total_revenue
FROM Categories
JOIN Products
ON Categories.category_id = Products.category_id
JOIN Order_Items
ON Products.product_id = Order_Items.product_id
GROUP BY Categories.category_name
HAVING SUM(Products.price * Order_Items.quantity) > 2000;
-- Task 9
SELECT *
FROM Products
ORDER BY price DESC
LIMIT 3;
-- Task 10
SELECT product_name,
       price,
       CASE
           WHEN price > 1000 THEN 'Premium'
           WHEN price BETWEEN 500 AND 1000 THEN 'Mid-range'
           ELSE 'Basic'
       END AS Price_Status
FROM Products;
