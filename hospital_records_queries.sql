--- Performance and Revenue Exploratory Analysis: Hospital Department ---

SELECT * FROM hospital_db.hospital_records;

--- A. PERFORMANCE 

--- 1. Which department has most patients? (patient_id & department)
SELECT department, COUNT(patient_id) AS total_patients
FROM hospital_records
GROUP BY department
ORDER BY total_patients DESC;

--- 2. Which department has the longest vs shortest average stay? (department & length_of_stay)
SELECT department, AVG(length_of_stay) AS avg_stay
FROM hospital_records
GROUP BY department
ORDER BY avg_stay DESC;

--- 3. Which doctor handles the most cases & which doctor*s patients stay the longest?
--- (doctor_name + patient_id + length_of_stay)
SELECT doctor_name, COUNT(patient_id) AS total_cases, AVG(length_of_stay) AS avg_stay
FROM hospital_records
GROUP BY doctor_name
ORDER BY total_cases DESC;

--- 4. Does patient*s age affect stay? (patient_age & length_of_stay)
SELECT patient_age, AVG(length_of_stay) AS avg_stay
FROM hospital_records
GROUP BY patient_age
ORDER BY patient_age;

--- B. REVENUE

--- 5. Which department brings most revenue? (department + treatment_cost + medicine_cost)
SELECT department, SUM(treatment_cost + medicine_cost) AS total_revenue
FROM hospital_records
GROUP BY department
ORDER BY total_revenue DESC;

--- 6. For each department, how much is treatment vs medicine?
--- (department + treatment_cost + medicine_cost)
SELECT department, SUM(treatment_cost) AS total_treatment, SUM(medicine_cost) AS total_medicine
FROM hospital_records
GROUP BY department;

--- 7. Which is more profitable per day - short stay or long stay?
--- (treatment_cost + medicine_cost + length_of_stay = cost_per_day)
SELECT patient_id, length_of_stay, (treatment_cost + medicine_cost) AS total_cost, 
(treatment_cost + medicine_cost) DIV length_of_stay AS cost_per_day
FROM hospital_records
ORDER BY cost_per_day DESC;

--- C. COMBINED - Performance + Revenue
--- 8. Are older patients more expensive? (patient_age + total_cost)
SELECT patient_age, AVG (length_of_stay) AS avg_stay,
CAST(AVG(treatment_cost + medicine_cost) AS UNSIGNED) AS avg_cost
FROM hospital_records
GROUP BY patient_age
ORDER BY avg_cost DESC;