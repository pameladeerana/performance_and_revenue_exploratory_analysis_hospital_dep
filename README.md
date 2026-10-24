# Performance and Revenue Exploratory Analysis: Hospital Department

Exploring patient age demographics, efficiency, and revenue by department using sample anonymized hospital data records.

**Database Name:** `hospital_db`  
**Table:** `hospital_records` (`record_id, patient_id, patient_age, doctor_name, department, treatment_cost, medicine_cost, length_of_stay`)

---

## 1. Database Schema

**Source:** CSV → MySQL Workbench Table Data Import Wizard

**Table: hospital_records**

| Column | Type | Description |
|--------|------|-------------|
| record_id | INT | Primary Key |
| patient_id | INT | Patient ID |
| patient_age | INT | Age 20-80 |
| doctor_name | TEXT | e.g., Dr. Villanueva |
| department | TEXT | 8 departments |
| treatment_cost | INT | PHP |
| medicine_cost | INT | PHP |
| length_of_stay | INT | Days |

> Auto-generated schema via Import Wizard, data types verified manually.

---

## 2. Business Questions

This study answers 8 questions about hospital performance and revenue.

### A. PERFORMANCE - How well is the hospital running?

**1. Which department has most patients?**
Uses: `patient_id & department`
Query: `SELECT department, COUNT(patient_id) AS total_patients...`

**2. What is the longest vs shortest average stay?**
Uses: `department & length_of_stay`
Query: `AVG(length_of_stay) GROUP BY department`

**3. Which doctor has most cases?**
Uses: `doctor_name & patient_id`

**4. Does age affect length of stay?**
Uses: `patient_age & length_of_stay`

### B. REVENUE - How does the hospital make money?

**5. Which department makes most revenue?**
Uses: `department & (treatment_cost + medicine_cost)`

**6. How much is treatment vs medicine cost per department?**
Uses: `department, treatment_cost, medicine_cost`

**7. Is short stay more profitable per day vs long stay?**
Uses: `length_of_stay & total cost per day`

**8. Are older patients more expensive?**
Uses: `patient_age & total cost`

---

## 3. Workflow

1.  **Data Gathering:** Data was already provided (sample anonymized hospital records). Not scraped, directly from CSV file.
2.  **Upload to MySQL:** CSV file uploaded to MySQL Workbench (`hospital_db.hospital_records`) via Table Data Import Wizard.
3.  **Define Questions:** Determined 8 business questions for Performance and Revenue analysis.
4.  **SQL Queries:** Ran 8 queries in MySQL (one per question) to get results.
5.  **Export Results:** Exported each query result as CSV (8 CSV files).
6.  **Python Processing:** Used Python (Google Colab, `pandas`) with `pd.ExcelWriter` to combine all 8 CSVs into one Excel file (`hospital_results.xlsx`). Edited findings and added insights for each item.
7.  **Visualization:** Imported Excel into Power BI. Created 8 visuals in one dashboard page.
8.  **Final Files:** Renamed and gathered all files - CSVs, Excel, PDF report with insights, Power BI file (.pbix), and this README.md.

Simple flow: **CSV → MySQL → Queries → CSV Results → Python → Excel → Power BI → PDF Dashboard**

---

## 4. Key Insights - Overall Finding

**Performance:** Hospital is busiest in Geriatrics (20 patients) and Cardiology (18), but Surgery (11 days avg) and Oncology (9 days avg) patients stay longest. Dr. Villanueva is the busiest doctor (20 cases).

**Revenue:** Oncology (₱613K) and Cardiology make the most money even though Geriatrics has more patients. That means Geriatrics has many patients but cheaper cases.

**Cost per Day:** Short stay is more profitable per day. 1-day patient pays ₱8,200 per day, while 5-day patient only pays ₱4,200 per day. Short stays = higher daily rate.

**Age vs Cost:** Yes, older patients are more expensive. Oldest expensive patient is 47 years old (₱30,700 avg cost, 11.6 days stay). Top 10 most expensive are all age 43-65. Older patients stay longer and cost more.

**Overall Summary:** Older patients (40-65) are the most valuable - they stay longer and pay more. Short stays make more money per day, but long stays (Surgery, Oncology) make more total money.

**Simple Conclusion:** Hospital should focus on Surgery and Oncology for revenue, and Geriatrics for patient volume.

---

## 5. Files

- `hospital_records.csv` - Raw data
- `hospital_db` - MySQL database
- `query_1_to_8_results.csv` - 8 CSV files from MySQL queries
- `hospital_results.xlsx` - Combined Excel with insights
- `hospital_visualization.pdf` - Dashboard export (8 charts)
- `hospital_dashboard.pbix` - Power BI file
- `README.md` - This file

---

## 6. Tools Used

- MySQL Workbench - Database & Queries
- Python (Google Colab, Pandas) - Data processing & Excel merging
- Excel - Editing findings
- Power BI Desktop - Visualization (8 charts dashboard)
- HP Laptop, Office

---
**Author:** Pamela Dee Rana  
**Date:** Oct 2026
