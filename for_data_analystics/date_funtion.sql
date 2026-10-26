--date function

select --order_id, order_date
YEAR(order_date) as order_yeaer, MONTH(order_date) as order_month, SUM(sales)
from orders_data
group by DATEPART (MONTH, order_date), DATEPART(YEAR, order_date)

select order_id, order_date 
,DATENAME(MONTH, order_date) as order_month
from orders_data

-- find number of days order days to ship days

select order_id, order_date , ship_date
,DATEDIFF(DAY, order_date, ship_date) as lead_days
from orders_data


-- date add

select order_id, order_date , ship_date
,DATEADD(DAY,5, order_date) as add_5
from orders_data
