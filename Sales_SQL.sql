select* from dbo.Orders$

----------------Usage of Extract(Year,Month from Groupby,orderby Year,Month)--------

SELECT 
    YEAR(order_a.[Order Date]) AS order_year,
    MONTH(order_a.[Order Date]) AS order_month,
    SUM(order_a.Sales) AS revenue,
    COUNT(DISTINCT order_a.[Order ID]) AS volume
FROM 
    dbo.Orders$ AS order_a
WHERE 
    order_a.[Order Date] BETWEEN '2014-01-01' AND '2015-12-31'
GROUP BY 
    YEAR(order_a.[Order Date]),
    MONTH(order_a.[Order Date])
ORDER BY 
    order_year,
    order_month;
---------------------------------Sum()---------------

SELECT   SUM(Sales) AS total_revenue
FROM   dbo.Orders$;	
---------------------------Distinct()----------------
SELECT 
    COUNT(DISTINCT "Order ID") AS volume
FROM    dbo.Orders$;

---------------------Order by()-------------------------
SELECT "Customer ID", "Customer Name",Profit
FROM dbo.Orders$
ORDER BY Profit DESC ;
