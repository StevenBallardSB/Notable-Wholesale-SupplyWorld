create SCHEMA supplyworld;
use supplyworld;

DROP TABLE IF EXISTS Users;
CREATE TABLE Users(
email VARCHAR(255) NOT NULL,
password VARCHAR(255) NOT NULL
) ;

Insert INTO users values ('admin@supplyworld.com', 'admin');

DROP TABLE IF EXISTS Products;
CREATE TABLE Products (
	productId int NOT NULL PRIMARY KEY,
	name varchar(50) NOT NULL,
	category varchar(50) NOT NULL,
	quantityOnHand int NOT NULL
    );
    
    INSERT INTO Products VALUES 
	('1', 'Meat Sticks', 'Groceries','30'),
	('2','Crackers', 'Groceries','30'),
	('3','Free-Range Tofu', 'Groceries','30'),
    ('4','Fossilized Dinosaur Egg','Groceries','30'),
    ('5','Wood Chips','Groceries','30'),
    ('6','Chocolate Covered Scorpions','Groceries','30'),
    
	('7', 'Stylish Romphim','Clothing','30'),
	('8', 'Onesie','Clothing','30'),
	('9', 'Snuggy','Clothing','30'),
    ('10', 'Propeller Hat', 'Clothing','30'),
    ('11', 'Athletic Fruit Shirt', 'Clothing','30'),
    ('12', 'Teddy Bear Jacket', 'Clothing','30'),
    
	('13', 'Calculator','Electronics','30'),
	('14', 'HDMI Cable','Electronics','30'),
	('15', 'Television', 'Electronics','30'),
    ('16', 'Apple Super Charger','Electronics','30'),
    ('17', 'Robot Dog', 'Electronics','30'),
    ('18', 'The Clapper','Electronics','30'),
    
	('19', 'Nunchucks', 'Sporting Goods','30'),
	('20', 'Authentic Roman Javelin','Sporting Goods','30'),
	('21', 'Rocket-powered Rollerskates', 'Sporting Goods', '30'),
    ('22', 'Golf Balls (Pack of 5,000)','Sporting Goods','30'),
    ('23', 'Velcro trampoline and wall','Sporting Goods','30'),
    ('24', 'Pogo Stick', 'Sporting Goods','30'),
    
	('25', 'Stapler', 'Office Supplies', '30'),
	('26', 'Paper Shredder', 'Office Supplies','30'),
	('27', '3D-Printer','Office Supplies','30'),
	('28', 'Paperclips','Office Supplies', '30'),
    ('29', 'Desk Pillow','Office Supplies', '30'),
    ('30', 'Tape Dispenser', 'Office Supplies', '30')
    ;

DROP TABLE IF EXISTS Customers;
CREATE TABLE Customers(
customerId INT NOT NULL AUTO_INCREMENT,
name varchar(50) NOT NULL,
email VARCHAR(255) NOT NULL,
PRIMARY KEY (customerId)
);
    
DROP TABLE IF EXISTS Orders;
CREATE TABLE Orders(
   OrderId INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
   customerId INT NOT NULL,
   Amount DECIMAL(12,2) NOT NULL,
   Status VARCHAR(255) NOT NULL,
   FOREIGN KEY (customerId) REFERENCES Customers(customerId)
   );

DROP TABLE IF EXISTS OrderDetails;
CREATE TABLE OrderDetails(
   OrderId   INT NOT NULL,
   ProductId INT NOT NULL,
   Quantity INT NOT NULL,
   FOREIGN KEY (OrderId) REFERENCES Orders(OrderId),
   FOREIGN KEY (ProductId) REFERENCES Products(productId)
);
