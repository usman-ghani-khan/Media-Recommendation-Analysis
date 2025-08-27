SELECT 
    campaign_id,
    company,
    campaign_type,
    ROUND(roi, 3) AS roi,
    ROUND(conversion_rate * 100, 2) AS conversion_rate_pct,
    engagement_score,
    ROUND((roi/10 + conversion_rate*100/10 + engagement_score/10), 3) AS performance_score
FROM marketing_campaign
ORDER BY performance_score DESC
LIMIT 10;
