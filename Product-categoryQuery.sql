CREATE DATABASE product_categoryDb
GO
USE product_categoryDb

CREATE TABLE Product(
	Id INT,
	Name NVARCHAR(50) NOT NULL,
	Price MONEY,
	PRIMARY KEY(Id)
)

CREATE TABLE Category(
	Id INT,
	Name NVARCHAR(50) NOT NULL,
	PRIMARY KEY(Id)
)

CREATE TABLE Product_category(
	ProductId INT FOREIGN KEY REFERENCES Product(Id),
	CategoryId INT FOREIGN KEY REFERENCES Category(Id)
)

INSERT INTO Product VALUES
(1,'Bike', 100),
(2,'Shoes', 40),
(3,'Dumbbell',50),
(4,'Treadmill',150),
(5,'Skateboard',50),
(6,'T-shirt',30),
(7,'Protein Bar',5),
(8,'HeadPhones',50)

INSERT INTO Category VAlUES
(1,'Transport'),
(2,'Training'),
(3,'Sportwear')

INSERT INTO Product_category VALUES
(1,1),
(1,2),
(2,1),
(2,3),
(3,2),
(4,2),
(5,2),
(6,3)

SELECT P.Name, C.Name
FROM Product as P
LEFT JOIN  Product_category as PC
	ON P.Id = PC.ProductId
LEFT JOIN Category as C
	ON PC.CategoryId = C.Id

