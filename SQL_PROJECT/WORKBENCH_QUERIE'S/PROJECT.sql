# Querry to display all details of super store

SELECT * 
FROM superstore;



# Query to dispaly country and states with it's sales and profit


SELECT country,state,sales,profit
FROM superstore;

# Querry todispaly city name,PostalCode,sales,profit where sales are greater than 100
SELECT city,sales,profit,`Postal Code`
from superstore
WHERE sales > 100;

select* from superstore;

USE projectmain;


#2.Write a querry to dispaly ship mode in west region?

SELECT `ship mode`,region
from superstore
WHERE region='west';
 
 
 
#3.Querry to Dispaly Country and City of Segemnt in single output console?

SELECT concat(country,city) as 'country(state)'
from superstore;


#4.Querry to Dispaly region of sales are more than 100 and quantity lessthan 5?

SELECT region,sales,quantity
from superstore
WHERE sales>100 
AND quantity<5; 

#5.Querry to Dispaly ship mode where segment was consumer in city henderson,fort lauderdale,los angeles and richardson.

SELECT `ship mode`,segment,city
FROM superstore
WHERE segment IN ('consumer') 
AND city IN ('henderson','fort lauderdale','los angeles','richardson');


#6.Querry to Dispaly Details of store where profit Between 10 to 100 and quantity was not betweeen 0 to 5.


SELECT * FROM superstore
WHERE profit BETWEEN '10' AND '100'
AND quantity NOT BETWEEN '0' and '5';

#7.Querry to Dispaly city name starts with "l" and category was ends with"s".

SELECT city,category 
FROM superstore
WHERE city  LIKE 'l%' 
AND category LIKE '%s';

#8.Querry to Dispaly Maximum and Minimum sales and sum of profit .

SELECT MAX(sales) AS 'MAXIMUM SALES',MIN(sales) AS 'MINNIMUM SALES',SUM(profit) AS 'TOTAL PROFIT'
FROM superstore;


#9.Querry to Dispaly average of profit and count of sales.

SELECT AVG(profit),COUNT(sales)
FROM superstore;

#10.Querry to dispaly count of category and sub category with total profit

select COUNT(CATEGORY) AS 'TOTAL CATEGORIES',
COUNT(`sub-category`) AS 'TOTAL CATEGORIES',
SUM(profit) AS 'TOTAL PROFIT'
FROM superstore;

#11.Querry to dispaly profit in each region.

SELECT SUM(profit) as 'total profit by region',region
FROM superstore
WHERE Profit>150
GROUP BY region;


#12.Querry to Dispaly category of profit in office supplies,furniture.

SELECT category,profit 
FROM superstore
WHERE profit in
           (SELECT profit
           FROM superstore
           where category in ('office supplie','furniture'));


#13.Querry to Dispaly segment of state in south region.

SELECT segment,city
FROM superstore
WHERE segment in
          (SELECT segment
          FROM superstore
          WHERE region='south');
          

#14.Querry to Dispaly Avarage sales by country.

SELECT country,AVG(sales)
FROM superstore
group by country;


#15.Querry to Dispaly profit percentage by region.
select region,(sum(profit)/sum(sales)*100) as 'profit percentage'
from superstore
group by region ;

#16.Querry to Dispaly sales more than 100 based on category.

SELECT category,SUM(sales) as 'total sales'
FROM superstore
group by category;
 
 
#17.Querry to Dispaly avrage profit MORE THAN 5000 bases on sub category.

SELECT `sub-category`,SUM(profit)
FROM superstore
GROUP BY `sub-category`
having (sum(profit) > 5000);


#18.Querry to Dispaly quantity based on region where.

SELECT region,SUM(quantity)
FROM superstore
group by region;

#20.Querry to Dispaly states with it's average sales.

SELECT state,avg(sales)
FROM superstore
GROUP BY state;

#21.Querry to Dispaly country with its average profit


SELECT country,AVG(profit)
FROM superstore
GROUP BY COUNTRY;

# Query to dipalay details sum of sales,quantity,profit in different regions.

SELECT Region,SUM(sales) as 'Total Sales',SUM(quantity) as 'Total Quantity',SUM(profit) as 'Total Profit'
FROM superstore
GROUP BY Region;


# Query to Display details sum of sales,quantity,profit in different states.

SELECT state,SUM(sales) as 'Total Sales',SUM(quantity) as 'Total Quantity',SUM(profit) as 'Total Profit'
FROM superstore
GROUP BY state;

# Query to display city with total sales,quntity,profit.

SELECT city,SUM(sales) as 'TOTAL SALES',SUM(quantity) AS 'TOTAL QUANTITY',SUM(profit) AS 'TOTAL PROFIT'
FROM superstore
GROUP BY city;


# Query to display sum of sales,quantity,profit for one year in different categories.

SELECT category,(SUM(SALES)*12) AS 'ANNUAL SALES',
(SUM(QUANTITY)*12) AS 'ANNUAL QUANTITY',
(SUM(PROFIT)*12) AS 'ANNUAL PROFIT'
FROM superstore
GROUP BY Category;

# Query to display average sales and profit in different Segments

SELECT SEGMENT,AVG(sales) AS 'average sales',AVG(profit) AS 'average profit'
FROM superstore
GROUP BY SEGMENT;


# Query to display less than 50 sales in different regions

SELECT region,sales
FROM superstore
WHERE sales < 50;
