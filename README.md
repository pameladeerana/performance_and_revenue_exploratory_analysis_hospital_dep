# Performance and Revenue Exploratory Analysis: Hospital Department

Exploring patient age demographics, efficiency, and revenue by department using sample anonymized hospital data records.

**Database Name:** hospital_db  
**Table:** hospital_records (record_id, patient_id, patient_age, doctor_name, department, treatment_cost, medicine_cost, length_of_stay)
**Database Schema: CSV → MySQL Workbench Table Data Import Wizard

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

---

## 1. Business Questions

This study answers 8 questions about hospital performance and revenue.

### A. PERFORMANCE - How well is the hospital running?

**1. Which department has most patients?**
**2. What is the longest vs shortest average stay?**
**3. Which doctor has most cases?**
**4. Does age affect length of stay?**

### B. REVENUE - How does the hospital make money?

**5. Which department makes most revenue?**
**6. How much is treatment vs medicine cost per department?**
**7. Is short stay more profitable per day vs long stay?**
**8. Are older patients more expensive?**

---

## 2. Workflow

1.  **Data Gathering:** Data was already provided (sample anonymized hospital records), directly from CSV file.
2.  **Upload to MySQL:** CSV file uploaded to MySQL Workbench (`hospital_db.hospital_records`) via Table Data Import Wizard.
3.  **Define Questions:** Determined 8 business questions for Performance and Revenue analysis.
4.  **SQL Queries:** Ran 8 queries in MySQL to get results.
5.  **Export Results:** Exported each query result as CSV.
6.  **Python Processing:** Used Python (Google Colab, `pandas`) with `pd.ExcelWriter` to combine all 8 CSVs into one Excel file (`hospital_results.xlsx`). Edited findings and added insights for each item.
7.  **Visualization:** Imported Excel into Power BI. Created 8 visuals in one dashboard page.
8.  **Final Files:** Renamed and gathered all files.

Simple flow: **CSV → MySQL → Queries → CSV Results → Python → Excel → Power BI → PDF Dashboard**

---

## 3. Key Insights 

**A. Performance:** Hospital is busiest in Geriatrics (20 patients) and Cardiology (18), but Surgery (11 days avg) and Oncology (9 days avg) patients stay longest. Dr. Villanueva is the busiest doctor (20 cases).

**B. Revenue:** Oncology (₱613K) and Cardiology make the most money even though Geriatrics has more patients. That means Geriatrics has many patients but cheaper cases.

**C. Combined - Performance & Revenue :** Cost goes up as age gets higher but drops at old ages. Top 10 most expensive are age 43-65. Patients in their 40s-60s stay longer and cost more.

**Overall Summary:** Older patients (40-65) are the most valuable - they stay longer and pay more. Short stays make more money per day, but long stays (Surgery, Oncology) make more total money.

---

## 4. Files

- `README.md` - project overview
- `hospital_records.csv` - raw data
- `hospital_records_queries` - SQL file from MySQL queries
- `hospital_results.PDF` - results with insights
- `hospital_visualization.pdf` - dashboard export 

---

## 5. Tools Used

- MySQL Workbench - database & queries
- Python (Google Colab, Pandas) - excel merging
- Excel - editing findings
- Power BI Desktop - visualization of findings
- LLM (Meta AI) - automation and documentation assistance

---
**Author:** Pamela Dee Elegio Rana  
