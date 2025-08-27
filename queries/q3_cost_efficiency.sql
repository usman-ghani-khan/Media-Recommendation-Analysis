SELECT 
    company,
    ROUND(AVG(acquisition_cost), 2) AS avg_acquisition_cost,
    ROUND(AVG(roi), 2) AS avg_roi
FROM marketing_campaign
GROUP BY company
HAVING AVG(roi) > (SELECT AVG(roi) FROM marketing_campaign)
   AND AVG(acquisition_cost) < (SELECT AVG(acquisition_cost) FROM marketing_campaign)
ORDER BY avg_roi DESC;
