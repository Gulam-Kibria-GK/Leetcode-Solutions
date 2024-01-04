# Write your MySQL query statement below

select query_name, round((sum(rating/position)/count(query_name)),2) as quality , round(sum(if(rating<3 , 1,0))/count(query_name)*100,2) as poor_query_percentage from Queries 
where query_name is not null
group by query_name 


# SELECT 
#     query_name,
#     ROUND(AVG(rating/position), 2) AS quality,
#     ROUND(SUM(CASE WHEN rating < 3 THEN 1 ELSE 0 END) / COUNT(*) * 100, 2) AS poor_query_percentage
# FROM 
#     Queries
# WHERE query_name is not null
# GROUP BY
#     query_name;