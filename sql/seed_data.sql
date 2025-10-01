INSERT INTO customers(first_name,last_name,email,signup_date,city,state,country) VALUES
('Amit','Kumar','amit@example.com','2024-02-10','Hyderabad','Telangana','India'),
('Sneha','Reddy','sneha@example.com','2024-03-05','Kurnool','Andhra Pradesh','India'),
('Ravi','K','ravi@example.com','2024-05-20','Vijayawada','Andhra Pradesh','India');

INSERT INTO products(name,category,price,cost) VALUES
('Basic Tee','Clothing',299.00,150.00),
('Running Shoes','Footwear',2499.00,1600.00),
('Coffee Mug','Home',199.00,50.00),
('Wireless Mouse','Electronics',799.00,400.00);

INSERT INTO orders(customer_id,order_date,total_amount,status,promo_code) VALUES
(1,'2024-06-02',2698.00,'completed',NULL),
(2,'2024-06-10',598.00,'completed','WELCOME'),
(1,'2024-07-15',2499.00,'completed',NULL),
(3,'2024-07-20',199.00,'completed',NULL),
(2,'2024-08-05',1098.00,'completed','FESTIVE');

INSERT INTO order_items(order_id,product_id,quantity,unit_price,total_price) VALUES
(1,2,1,2499.00,2499.00),
(1,3,1,199.00,199.00),
(2,1,2,299.00,598.00),
(3,2,1,2499.00,2499.00),
(4,3,1,199.00,199.00),
(5,1,1,299.00,299.00),
(5,4,1,799.00,799.00);
