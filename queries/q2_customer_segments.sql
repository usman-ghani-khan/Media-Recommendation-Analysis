SELECT 
    customer_segment,
    ROUND(AVG(conversion_rate), 4) * 100 AS avg_conversion_rate
FROM marketing_campaign
GROUP BY customer_segment
ORDER BY avg_conversion_rate DESC;
