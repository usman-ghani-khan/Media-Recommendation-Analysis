SELECT 
    channel_used,
    ROUND(AVG(roi), 4) AS avg_roi
FROM marketing_campaign
GROUP BY channel_used
ORDER BY avg_roi DESC;
