# ​ Media Recommendation Analysis

This project explores marketing campaign performance using SQL queries on a Kaggle dataset of **200,000 rows**.  
The analysis answers **7 business questions** to uncover insights into ROI, conversion rates, engagement, and cost efficiency.  

**Dataset Source:** [Marketing Campaign Performance Dataset (Kaggle)](https://www.kaggle.com/datasets/manishabhatt22/marketing-campaign-performance-dataset)

---

## ​ Business Questions & Insights

1. **Top-performing Channels by ROI** → Facebook & Website deliver the highest average ROI.  
2. **Customer Segment Performance** → Foodies & Tech Enthusiasts are the most responsive groups.  
3. **Cost Efficiency Analysis** → DataTech Solutions runs the most cost-effective campaigns.  
4. **Regional Campaign Effectiveness** → Houston & Miami show the strongest ROI + engagement combo.  
5. **Campaign Type Impact** → Influencer campaigns deliver both strong ROI and conversion rates.  
6. **Language-targeted Campaigns** → French & Mandarin campaigns outperform others in ROI.  
7. **Overall Top Campaigns** → Ranking based on ROI, conversion rate, and engagement combined.  

---

## ​​ Skills & Concepts Used

- **SQL techniques:** `GROUP BY`, `HAVING`, `ORDER BY`, nested subqueries, aggregate functions, conditional filters  
- **Analytical reasoning:** Translating query results into business recommendations  
- **Marketing analytics:** Comparing ROI, conversion rates, engagement, cost efficiency  

---

## ​ Repo Contents

- `queries/` → SQL scripts categorized by business question  
- `results/` → CSV files containing query outputs  
- `README.md` → Overview, dataset link, insights, and project structure

---

##  Sample Query & Output

**Question:** Which marketing channels have the highest average ROI?

```sql
SELECT channel_used, ROUND(AVG(roi), 4) AS avg_roi
FROM marketing_campaign
GROUP BY channel_used
ORDER BY avg_roi DESC;
```

| Channel Used | Avg ROI  |
|--------------|----------|
| Facebook     | 5.0187   |
| Website      | 5.0142   |
| Google Ads   | 5.0031   |
| Email        | 4.9965   |
| YouTube      | 4.9938   |
| Instagram    | 4.9887   |

