Create table customer(
id int not null,
product int not null
);
Insert into customer(id,product)
values(1,5),
(2,6),
(3,5),
(3,6),
(1,6);
Select * From customer;
Select id as customer_id
from
(
Select id,count(product) 
from customer
Group by id
Having count(product)>1
) as max_products;










