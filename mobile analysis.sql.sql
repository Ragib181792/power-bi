SELECT * FROM mobile;

-- 1- Check mobile features and price list--
SELECT Phone_name, Price FROM mobile;

-- 2- Find out the price of 5 most expensive phones--
SELECT Phone_name, Price FROM mobile ORDER BY Price DESC LIMIT 5;

-- 3- Find out the price of 5 most cheapest phones--
SELECT Phone_name, Price FROM mobile ORDER BY Price ASC LIMIT 5;

-- 4- List of top 5 Samsung phones with price and all features--
SELECT * FROM mobile WHERE Brands = 'Samsung'
ORDER BY Price DESC LIMIT 5;

-- 5- Must have android phone list then top 5 High price android phones--
SELECT *  FROM mobile  
WHERE Operating_System_Type='Android'
ORDER BY Price DESC LIMIT 5;

-- 6- Must have android phone list then top 5 lower price android phones--
SELECT *  FROM mobile  
WHERE Operating_System_Type='Android'
ORDER BY Price ASC LIMIT 5;

-- 7- Must have IOS phone list then top 5 High Price IOS phones--
SELECT *  FROM mobile  
WHERE Operating_System_Type='iOS'
ORDER BY Price DESC LIMIT 5;

-- 8- Must have IOS phone list then top 5 lower Price IOS phones--
SELECT *  FROM mobile  
WHERE Operating_System_Type='iOS'
ORDER BY Price ASC LIMIT 5;

-- 9- Write a query which phone support 5g and also top 5 phone with 5g suppot--
SELECT * FROM mobile WHERE 5G_availabIlity ='YES'
ORDER BY price DESC LIMIT 5;

-- 10- Total price of all mobile is to be found with brand name--
SELECT Brands,sum(price) as total_price FROM mobile
GROUP BY Brands