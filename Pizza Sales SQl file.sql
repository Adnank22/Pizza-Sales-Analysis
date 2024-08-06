SELECT * FROM pizza_sales;

 SELECT SUM(total_price) AS Total_revenue
 FROM pizza_sales;

 SELECT SUM(total_price)/COUNT(DISTINCT order_id) AS Avg_order_Value
 FROM pizza_sales;

 SELECT SUM(quantity) AS Total_pizza_sold
 FROM pizza_sales;

  SELECT COUNT(DISTINCT order_id) AS Total_Orders
 FROM pizza_sales;

 SELECT CAST(CAST(SUM(quantity) AS decimal(10,2))/CAST(COUNT(DISTINCT
 order_id)AS decimal(10,2))
 AS decimal(10,2)) AS Avg_Pizzas_per_order
 FROM pizza_sales;

  SELECT DATENAME(DW, order_date) AS order_day, COUNT(DISTINCT order_id) AS
 total_orders
 FROM pizza_sales
 group by DATENAME(DW, order_date);

 SELECT DATENAME(month, order_date) AS order_month,COUNT(DISTINCT order_id)
 AS total_orders
 FROM pizza_sales
 group by DATENAME(month, order_date);

 SELECT pizza_category, CAST(SUM(total_price) AS DECIMAL(10,2)) as
 total_revenue, CAST(SUM(total_price)*100/
 (SELECT SUM(total_price) FROM pizza_sales) AS DECIMAL(10,2)) AS PCT
 FROM pizza_sales
 GROUP BY pizza_category

 SELECT pizza_category, SUM(quantity) AS Total_Quantity_Sold
 FROM pizza_sales
 GROUP BY pizza_category
 ORDER BY Total_Quantity_Sold DESC


 SELECT pizza_size, CAST(SUM(total_price) AS DECIMAL(10,2)) as
 total_revenue, CAST(SUM(total_price)*100/
 (SELECT SUM(total_price) FROM pizza_sales) AS DECIMAL(10,2)) AS PCT
 FROM pizza_sales
 GROUP BY pizza_size
 ORDER BY pizza_size

 SELECT TOP 5 pizza_name, SUM(total_price) AS Total_Revenue
 FROM pizza_sales
 GROUP BY pizza_name
 ORDER BY Total_Revenue DESC

 SELECT TOP 5 pizza_name, SUM(total_price) AS Total_Revenue
 FROM pizza_sales
 GROUP BY pizza_name
 ORDER BY Total_Revenue ASC

 SELECT TOP 5 pizza_name, SUM(quantity) AS Total_Pizza_Sold
 FROM pizza_sales
 GROUP BY pizza_name
 ORDER BY Total_Pizza_Sold DESC

 SELECT TOP 5 pizza_name, SUM(quantity) AS Total_Pizza_Sold
 FROM pizza_sales
 GROUP BY pizza_name
 ORDER BY Total_Pizza_Sold ASC

 SELECT TOP 5 pizza_name, COUNT(DISTINCT order_id) AS Total_Orders
 FROM pizza_sales
 GROUP BY pizza_name
 ORDER BY Total_Orders DESC

 SELECT TOP 5 pizza_name, COUNT(DISTINCT order_id) AS Total_Orders
 FROM pizza_sales
 GROUP BY pizza_name
 ORDER BY Total_Orders ASC