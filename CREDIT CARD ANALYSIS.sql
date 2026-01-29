create database learnbayproj_sql2

use learnbayproj_sql2

select * from cct

-- find out the top 5 cities with highest spend and there contribution in terms of total spend
with cte1 as (
select city,
sum(amount) as total_spend
from cct
group by city),
total_spent as (
select sum(cast(amount as bigint)) as total_amount from cct)
select top 5 cte1.*, 
cast(round(total_spend * 1.0/total_amount * 100, 2) as decimal(10, 2)) as percentage_cont
from cte1 inner join total_spent on 1=1
order by total_spend desc

-- find out the highest spend month with amount for each card type
with cte as (
select card_type,
datepart(year, transaction_date) as yt,
datepart(month, transaction_date) as mt,
sum(amount) as total_spend
from cct
group by card_type, datepart(year, transaction_date), datepart(month, transaction_date)
)
select * from (select *, rank() over (partition by card_type order by total_spend) as rn
from cte) a where rn = 1

--gold 1500 1
--gold 1000 2
--gold 800  3
--gold 500  4

with cte as (
select card_type,
year(transaction_date) as yt,
month(transaction_date) as mt,
sum(amount) as total_spend
from cct
group by card_type, datepart(year, transaction_date), datepart(month, transaction_date)
)
select * from (select *, rank() over (partition by card_type order by total_spend desc) as rn
from cte) a where rn = 1

-- print all transactions where total spent reaches more than 10,00,000 for each card type
with cte as (
select *, 
sum(amount) over (partition by card_type order by transaction_date, transaction_id) as total_spent
from cct)
select * from (select *, rank() over (partition by card_type order by total_spent desc) as rn
from cte where total_spent >= 1000000) a where rn=1

-- find out the percentage contribution of spends  by females for each expense type
select exp_type,
cast(sum(case when gender = 'F' then amount else 0 end)*1.0 / sum(amount) as decimal(10,2)) as percentage_female_cont
from cct
group by exp_type
order by percentage_female_cont desc

-- during weekends which city has the highesr total spend  to total number of transactions ratio
select top 1 city,
cast(sum(amount) * 1.0 / count(*) as decimal(10,0)) as ratio
from cct
where datepart(weekday, transaction_date) in (1,7) -- 1 = sunday and 7 = saturday
group by city
order by ratio desc

-- which city took least number of days to reach 500th transaction from the first transaction 
with cte as (
select *,
row_number() over (partition by city order by transaction_date, transaction_id) as rn
from cct)
select city,
datediff(day, min(transaction_date), max(transaction_date)) as diff1
from cte
where rn = 1 or rn = 500
group by city
having count(*) = 2
order by diff1



-- 1500 * 1.0 / 10000



