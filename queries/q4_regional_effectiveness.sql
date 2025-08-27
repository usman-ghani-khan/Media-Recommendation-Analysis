SELECT 
    location,
    ROUND(AVG(engagement_score), 3) AS avg_engagement_score,
    ROUND(AVG(roi), 3) AS avg_roi
FROM marketing_campaign
GROUP BY location
HAVING AVG(engagement_score) > (SELECT AVG(engagement_score) FROM marketing_campaign)
   AND AVG(roi) > (SELECT AVG(roi) FROM marketing_campaign)
ORDER BY avg_roi DESC;
