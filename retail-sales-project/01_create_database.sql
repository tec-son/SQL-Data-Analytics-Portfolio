CREATE TABLE customers (
	customer_id INT NOT NULL PRIMARY KEY,
	name VARCHAR(100) NOT NULL,
	gender VARCHAR(10),
	city VARCHAR(50),
	signup_date DATE
);

CREATE TABLE products (
	proudct_id INT NOT NULL PRIMARY KEY,
	product_name VARCHAR(100),
	category VARCHAR(50)
);

CREATE TABLE orders (
	order_id INT NOT NULL PRIMARY KEY,
	customer_id INT NOT NULL,
	order_date DATE,
	total_amount DECIMAL(10,2),
	FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

CREATE TABLE order_items (
	order_item_id INT NOT NULL PRIMARY KEY,
	order_id INT NOT NULL,
	product_id INT NOT NULL,
	quantity INT,
	price DECIMAL(10,2),
	FOREIGN KEY (order_id) REFERENCES orders(order_id),
	FOREIGN KEY (product_id) REFERENCES products(proudct_id)
);

INSERT INTO customers
VALUES 
	(1, 'Ama Mensah', 'Female', 'Accra', '2022-01-15'),
	(2, 'Kwame Asante', 'Male', 'Kumasi', '2022-03-22'),
	(3, 'Akosua Owusu', 'Female', 'Accra', '2023-05-10'),
	(4, 'Kofi Boateng', 'Male', 'Takoradi', '2023-07-18'),
	(5, 'Yaw Appiah', 'Male', 'Kumasi', '2022-11-02'),
	(6, 'Abena Adu', 'Female', 'Cape Coast', '2024-01-09'),
	(7, 'Kojo Baffoe', 'Male', 'Accra', '2023-02-14'),
	(8, 'Efua Osei', 'Female', 'Kumasi', '2024-04-03'),
	(9, 'Nana Yaa', 'Female', 'Accra', '2022-09-27'),
	(10, 'Kwesi Arthur', 'Male', 'Tamale', '2023-12-12'),
	(11, 'Adwoa Serwaa', 'Female', 'Accra', '2024-02-20'),
	(12, 'Yaw Mensah', 'Male', 'Sunyani', '2022-06-05'),
	(13, 'Akua Donkor', 'Female', 'Kumasi', '2023-03-11'),
	(14, 'Kwaku Manu', 'Male', 'Accra', '2024-05-15'),
	(15, 'Mavis Adjei', 'Female', 'Takoradi', '2022-08-08');

INSERT INTO products 
VALUES 
	(101, 'Laptop', 'Electronics'),
	(102, 'Smartphone', 'Electronics'),
	(103, 'Headphones', 'Electronics'),
	(104, 'Office Chair', 'Furniture'),
	(105, 'Desk', 'Furniture'),
	(106, 'Printer', 'Electronics'),
	(107, 'Monitor', 'Electronics'),
	(108, 'Keyboard', 'Electronics'),
	(109, 'Mouse', 'Electronics'),
	(110, 'Bookshelf', 'Furniture');

INSERT INTO orders 
VALUES
	(1001,1,'2023-01-10',2500),
	(1002,2,'2023-02-15',1800),
	(1003,3,'2023-03-05',3200),
	(1004,1,'2023-04-12',900),
	(1005,4,'2023-05-20',1500),
	(1006,5,'2023-06-18',700),
	(1007,6,'2024-01-25',2100),
	(1008,7,'2024-02-14',450),
	(1009,8,'2024-03-30',1750),
	(1010,9,'2024-04-05',980),
	(1011,10,'2024-05-11',2600),
	(1012,3,'2024-06-22',1300),
	(1013,11,'2024-07-09',890),
	(1014,12,'2024-08-16',1430),
	(1015,13,'2024-09-01',2200),
	(1016,14,'2024-09-20',1990),
	(1017,1,'2024-10-02',870),
	(1018,5,'2024-10-10',640),
	(1019,2,'2024-11-18',3100),
	(1020,15,'2024-12-05',1550);

INSERT INTO order_items 
VALUES
	(1,1001,101,1,2500),
	(2,1002,102,1,1800),
	(3,1003,101,1,2500),
	(4,1003,103,2,350),
	(5,1004,109,3,300),
	(6,1005,104,1,1500),
	(7,1006,108,2,350),
	(8,1007,106,1,2100),
	(9,1008,109,1,450),
	(10,1009,107,1,1750),
	(11,1010,103,2,490),
	(12,1011,101,1,2600),
	(13,1012,105,1,1300),
	(14,1013,108,1,890),
	(15,1014,104,1,1430),
	(16,1015,107,1,2200),
	(17,1016,102,1,1990),
	(18,1017,109,2,435),
	(19,1018,108,2,320),
	(20,1019,101,1,3100),
	(21,1020,110,1,1550);