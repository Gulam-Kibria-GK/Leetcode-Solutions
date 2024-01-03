SELECT p.product_id, COALESCE(ROUND(sum(u.units * p.price) /(sum(u.units)), 2), 0) as average_price
FROM Prices p
left JOIN UnitsSold u ON p.product_id = u.product_id
and u.purchase_date BETWEEN p.start_date AND p.end_date
group by p.product_id