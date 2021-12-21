with hotels as (
SELECT * FROM project_hotels.`2018`
union
SELECT * FROM project_hotels.`2019`
union
SELECT * FROM project_hotels.`2020`)
select * from hotels
left join project_hotels.market_segment
on hotels.market_segment=market_segment.market_segment
left join project_hotels.meal_cost
on hotels.meal=meal_cost.meal;