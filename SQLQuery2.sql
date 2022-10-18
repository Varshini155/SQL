USE EShop

--This is a comment
--Get all products
Select * from Product

--get all prducts that have categoryid=10
Select * from Product
Where CategoryID = 10

--get total cost of products listed with categoryid = 10
select Sum(Cost) from Product
Where CategoryID = 10

--get Product name, cost from product table
Select Name, Cost from Product

--save above as view
CREATE VIEW Vw_Product AS
(Select Name, Cost from Product)

--see the view result
Select * from Vw_Product

--Get all Products That starts with "k"

Select * from Product
Where Name Like 'K%'

--Get all Products That starts with "p"
Select * from Product
Where Name Like '_p%'

--Get all the Pro\ducts whose cost is not equal to 5000
Select * from Product
Where Cost <> 5000

--'^%$' => The word- starts (^) with any character and contains 's' at the end ($)
Select * from Product
Where Name Like '%s'
-- Select all the products with names as T-sirt , iphone, kurti

Select * from Product
Where Name = 'T-Shirt' OR Name = 'iphone 14' OR Name = 'Kurti'

--Better way
Select * from Product
Where Name in ('t-Shirt','iphone 14','Kurti')
-- get all product having a category id matching a category in productcategory table
Select * from Product
Where CategoryID in (Select Id From ProductCategory)
--Get Customer Name and order Id for all customer
--customer Table Has Customer NAmes
--Order Id is in Orders tables

Select [Name], [OrderId] from Customer, Orders
Where Customer.Id = Orders.CustomerId

--Get total revenue generated by 'harry'
--Customer Name from customer table
--total cost from product
--orders table contains ccustomer purchases
Select SUM(Cost)
From Orders, Customer, Product
Where Orders.CustomerId = Customer.Id
and Orders.ProductId = Product.Id
and Customer.Name = 'Meena'