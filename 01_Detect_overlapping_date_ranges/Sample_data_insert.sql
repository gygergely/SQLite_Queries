CREATE TABLE customer_prices (
    ID           INTEGER,
    CustomerName STRING,
    ProductName  STRING,
    UnitPrice    DECIMAL,
    ValidFrom    DATE,
    ValidTo      DATE
);


INSERT INTO 
	overlapping_date 
	(
		'ID', 
		'CustomerName',
		'ProductName',
		'UnitPrice',
		'ValidFrom',
		'ValidTo'
	)
VALUES
	(1,	'Customer_1', 'Product_1',10,'2020-01-01','2020-03-25'),
	(2,	'Customer_1', 'Product_1',11,'2020-01-01','2020-02-21'),
	(3,	'Customer_1', 'Product_1',12,'2020-02-27','2020-03-21'),
	(4,	'Customer_1', 'Product_1',13,'2020-03-26','2020-06-30'),
	(5,	'Customer_1', 'Product_2',20,'2020-06-11','2020-07-18'),
	(6,	'Customer_1', 'Product_2',21,'2020-05-21','2020-06-30'),
	(7,	'Customer_1', 'Product_2',22,'2020-07-18','2020-08-31'),
	(8, 'Customer_1', 'Product_2',23,'2020-01-01','2020-06-11'),
	(9, 'Customer_2', 'Product_1',15,'2020-01-01','2020-03-31'),
	(10, 'Customer_2', 'Product_1',16,'2020-04-01','2020-06-30'),
	(11, 'Customer_2', 'Product_1',17,'2020-02-01','2020-05-15'),
	(12, 'Customer_2', 'Product_1',18,'2020-07-01','2020-09-30'),
	(13, 'Customer_2', 'Product_2',25,'2020-04-01','2020-09-30'),
	(14, 'Customer_2', 'Product_2',26,'2020-01-01','2020-03-31'),
	(15, 'Customer_2', 'Product_2',27,'2020-06-30','2020-07-15'),
	(16, 'Customer_2', 'Product_2',28,'2020-01-01','2020-06-11');