use lalit
select * from [SuperStore 1]
select count(order_id) as Total_Orders from [SuperStore 1]
select sum(sales) as Total_Sales from [SuperStore 1]
select Customer_name, count(*) as Count from [SuperStore 1] group by Customer_name having count(*)>1 order by Count desc
Select sum(profit) as Total_Profit from [SuperStore 1]
Select avg(profit) as Average_Profit from [SuperStore 1]
Select avg(sales) as Total_Sales from [SuperStore 1]
Select max(sales) as Max_Sales, min(sales) as Min_Sales from [SuperStore 1]
select sum(quantity) as Quantity_Sold from [SuperStore 1]
select count(Customer_ID) as Total_Customers from [SuperStore 1]
select count(distinct(Customer_ID)) as Total_customers from [SuperStore 1]
select count(distinct(Product_Name)) as Total_product from [SuperStore 1]
Select Segment, sum(sales) Total_Sales from [SuperStore 1] group by Segment
select count(distinct(category)) as Total_Category, count(distinct(sub_category)) as Total_SubCategory from [SuperStore 1]

select top 10 customer_id, customer_name, sum(sales) as Total_sales from [SuperStore 1] group by Customer_ID, Customer_Name order by Total_sales desc 
select top 10 customer_id, customer_name, sum(sales) as Total_Sales from [SuperStore 1] group by Customer_ID, Customer_Name order by Total_Sales desc
Select top 1 customer_id, customer_name, count(distinct(order_id)) as Total_Orders from [SuperStore 1] group by Customer_ID, Customer_Name order by Total_Orders desc
select customer_id, customer_name, round(avg(sales),2) as Avg_Spending from [SuperStore 1] group by Customer_ID, Customer_Name
select segment, round(sum(sales),2) as Total_Sales from [SuperStore 1] where segment = 'consumer' group by Segment
select segment, round(sum(sales),2) as Total_Sales from [SuperStore 1] where segment = 'Home Office' group by Segment
select segment, round(sum(sales),2) as Total_Sales from [SuperStore 1] where segment = 'corporate' group by Segment
select Segment, round(sum(profit),2) as Total_Profit from [SuperStore 1] group by Segment having Segment='consumer'
select Segment, round(sum(profit),2) as Total_Profit from [SuperStore 1] group by Segment having Segment='Home Office'
select Segment, round(sum(profit),2) as Total_Profit from [SuperStore 1] group by Segment having Segment='Corporate'
Select top 1 customer_id, customer_name, round(sum(sales),2) as Total_Sales from [SuperStore 1] group by Customer_ID, Customer_Name order by Total_Sales desc
select top 1 product_id, product_name, sum(quantity) as Total_Qty_Sold from [SuperStore 1] group by Product_ID, Product_Name order by Total_Qty_Sold desc
select top 1 product_id, product_name, sum(quantity) as Total_Qty_Sold from [SuperStore 1] group by Product_ID, Product_Name order by Total_Qty_Sold asc
select top 1 product_id, product_name, round(sum(profit),2) as Total_Profit from [SuperStore 1] group by Product_ID, Product_Name order by Total_Profit desc
select top 1 product_id, product_name, round(sum(profit),2) as Total_Profit from [SuperStore 1] group by Product_ID, Product_Name order by Total_Profit asc
select Category, round(sum(sales),2) as Total_Sales from [SuperStore 1] group by Category
select Category, round(sum(profit),2) as Total_Profit from [SuperStore 1] group by Category
select Sub_Category, round(sum(sales),2) as Total_Sales from [SuperStore 1] group by Sub_Category
Select Product_Id, Product_Name, sum(quantity) as Total_Qty from [SuperStore 1] group by Product_ID, Product_Name order by Total_Qty 
select Product_Id, Product_Name, avg(discount) as Avg_Discount from [SuperStore 1] group by Product_ID, Product_Name order by Avg_Discount
select Product_ID, Product_Name, Sales, Profit from [SuperStore 1] where Profit<0
select Region, round(sum(sales),2) as Regional_Sales from [SuperStore 1] group by Region order by Regional_Sales desc
select Region, round(sum(profit),2) as Regional_Profit from [SuperStore 1] group by Region order by Regional_Profit desc
Select State, round(sum(sales),2) as State_Sales from [SuperStore 1] group by State order by State_Sales
Select State, round(sum(Profit),2) as State_Profit from [SuperStore 1] group by State order by State_Profit
select top 3 City, sum(sales) as Total from [SuperStore 1] group by City order by Total desc
select top 3 City, sum(profit) as Profit from [SuperStore 1] group by City order by Profit desc
select State, Sales, sum(Profit) as Total_Profit from [SuperStore 1] group by State, Sales having sum(profit)<0 order by Total_Profit asc
select state, sum(discount) as Total_Discount from [SuperStore 1] group by State order by Total_Discount desc
select DATEPART(month,order_date) as Month, sum(sales) as Total_Sales from [SuperStore 1] group by DATEPART(month,order_date) order by Month
select datepart(year,order_date) as Year, sum(sales) as Sales from [SuperStore 1] group by datepart(year,order_date)
select datepart(month,order_date) as Month, datename(month,order_date) as Month_Name,  round(sum(Profit),2) as Monthly_Profit from [SuperStore 1] group by datename(Month, order_date), datepart(month,order_date) order by Month
select datepart(year,order_date) as Year, round(sum(Profit),2) as Total_Profit from [SuperStore 1] group by datepart(year,order_date) order by Year
select datepart(quarter,order_date) as Quater, round(sum(sales),2) as Total_Sales from [SuperStore 1] group by datepart(quarter,order_date) order by Quater
select DATEPART(quarter,order_date) as Quarter, round(sum(Profit),2) as Total_Profit from [SuperStore 1] group by DATEPART(quarter,order_date) order by Quarter
Select top 1 DATEPART(month,order_date) as Month,datename(month,order_date) as Month_Name, round(sum(Sales),2) as Total_Sales from [SuperStore 1] group by DATEPART(month,order_date), datename(month,order_date) order by Total_Sales desc 
Select top 1 DATEPART(month,order_date) as Month,datename(month,order_date) as Month_Name, round(sum(Sales),2) as Total_Sales from [SuperStore 1] group by DATEPART(month,order_date), datename(month,order_date) order by Total_Sales 
Select year(Order_Date) as Year, Month(Order_Date) as Month_No, datename(month,order_date) as Month_Name, sum(sales) as Sales from [SuperStore 1] group by year(Order_Date), Month(Order_Date), datename(month,order_date) order by Month_No
Select Ship_Mode, count(distinct(Order_ID)) as Total_Orders from [SuperStore 1] group by Ship_Mode
Select Ship_Mode, round(sum(sales),2) as Total_Sales from [SuperStore 1] group by Ship_Mode
select Ship_Mode, round(sum(profit),2) as Total_Profit from [SuperStore 1] group by Ship_Mode
Select top 1 Ship_Mode, round(sum(sales),2) as Total_Sales from [SuperStore 1] group by Ship_Mode order by Total_Sales desc
select avg(DATEDIFF(day,order_date,ship_date)) as Average_Shipping_Days from [SuperStore 1]
select avg(Discount) as Avg_Discount from [SuperStore 1]
Select Category, sum(discount) as Total_Discount from [SuperStore 1] group by Category
Select Region, sum(discount) as Total_Discount from [SuperStore 1] group by Region
Select Product_Id, Product_Name, round(sum(discount),2) as Total_Discount from [SuperStore 1] group by Product_ID, Product_Name order by Total_Discount desc
Select Discount, sum(sales) as Total_Sales, Sum(Profit) as Total_Profit from [SuperStore 1] group by Discount
Select Order_Id, Order_Date, Customer_Name, Sales, Discount, Profit from [SuperStore 1] where Discount>0.20 order by Discount desc
select Discount, Count(order_ID) as Total_Orders, sum(sales) as Total_Sales, sum(Profit) as Toatl_Profit from [SuperStore 1] group by Discount order by Discount
SELECT Discount, COUNT(Order_ID) AS Total_Orders, ROUND(SUM(Sales), 2) AS Total_Sales, ROUND(SUM(Profit), 2) AS Total_Loss FROM [SuperStore 1] GROUP BY Discount HAVING SUM(Profit) < 0 ORDER BY Total_Loss

