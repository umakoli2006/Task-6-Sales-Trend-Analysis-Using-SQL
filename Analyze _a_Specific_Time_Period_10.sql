SELECT
    YEAR(order_date) AS year,
    MONTH(order_date) AS month,
    SUM(amount) AS monthly_revenue,
    COUNT(DISTINCT order_id) AS order_volume
FROM online_sales
WHERE order_date BETWEEN '2026-03-01' AND '2026-06-30'
GROUP BY
    YEAR(order_date),
    MONTH(order_date)
ORDER BY
    year,
    month;