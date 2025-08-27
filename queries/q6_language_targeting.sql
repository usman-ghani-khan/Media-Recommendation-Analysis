SELECT 
    language,
    ROUND(AVG(conversion_rate) * 100, 3) AS avg_conversion_rate,
    ROUND(AVG(roi), 3) AS avg_roi
FROM marketing_campaign
GROUP BY language
ORDER BY avg_roi DESC;
