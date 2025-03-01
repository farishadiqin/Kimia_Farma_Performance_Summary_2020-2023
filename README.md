# Kimia Farma Performance Summary 2020-2023

## Background
Kimia Farma, Indonesia's first pharmaceutical industrial company, was founded by the Dutch East Indies Government in 1817. Originally named NV Chemicalien Handle Rathkamp & Co., the company was nationalized in 1958 following Indonesian independence. The Government of the Republic of Indonesia merged several pharmaceutical companies into PNF (State Pharmaceutical Company) Bhinneka Kimia Farma.  On August 16, 1971, the legal entity of PNF was changed to a Limited Liability Company, and the company name was changed to PT Kimia Farma (Persero).

The Project-Based Internship Program, in collaboration with Rakamin Academy and Kimia Farma Big Data Analytics, is a self-development and career acceleration program designed for those interested in exploring the Big Data Analytics position at Kimia Farma. This program provides access to foundational learning through article reviews and company coaching videos, introducing participants to the competencies and skills required of Big Data Analysts. In addition to the learning materials, there will be weekly assignment questions to assess learning outcomes, culminating in a final project that will serve as a portfolio for this program.

The final task in this program is to create a dashboard visualizing the sales data for one of Kimia Farma's products over the past four years, using the provided raw data.

## Goal
Provides information, insights, and business recommendations regarding Kimia Farma's sales data from 2020 to 2023.

## Methods

### Create New Project
![image](https://github.com/user-attachments/assets/06605966-14d6-4778-9114-89cc76d24995)
![image](https://github.com/user-attachments/assets/fe220ece-623e-4d45-9aad-354511250573)

### Create Dataset
![image](https://github.com/user-attachments/assets/323fea29-3698-447a-8beb-b53f0febdfd6)
![image](https://github.com/user-attachments/assets/4b524a21-865b-49a9-a691-d80e9c914741)

Fill all the blank then, **Create Dataset**

### Collect Data
![image](https://github.com/user-attachments/assets/499ae6bd-dc4e-481b-90ec-7dff9e605a5d)

Download all the data

### Importing Data (table) to BigQuery
![image](https://github.com/user-attachments/assets/bfce1212-053e-4f7a-88eb-d79ff56c1084)
![image](https://github.com/user-attachments/assets/be0cc3fb-3c1b-4263-bfe7-a14ab0899e79)
![image](https://github.com/user-attachments/assets/3bc51035-9479-4f4b-80f0-a4b9cb6ae87f)

Fill all the blank in *Source*, *Destination*, and *Schema* then, **Create Table**

## Query

### Checking all Tables
![image](https://github.com/user-attachments/assets/68428d2e-d75b-41ee-87f2-2715f4c013fd)
![image](https://github.com/user-attachments/assets/2626b3f6-b818-4876-b0bc-79187c3bf889)
![image](https://github.com/user-attachments/assets/e25c8520-33fa-41f1-b24a-87008302dea8)
![image](https://github.com/user-attachments/assets/2ae8837c-bb07-42a8-8bd1-5238622ff9e1)

### Join Tables
![image](https://github.com/user-attachments/assets/c43330df-6d77-4942-85f5-b64d3cd2ae00)
![image](https://github.com/user-attachments/assets/f00f71e9-e8f6-4cfc-80fb-848b9ec8729c)

### Feature Engineering and Tranformation
![image](https://github.com/user-attachments/assets/180c0cf3-7548-4b1d-8267-f7dc0bd4f275)
![image](https://github.com/user-attachments/assets/403bcca2-ff02-4692-a10d-0f42e7b230c7)

Rename the "rating" column to distinguish between customer ratings for transactions (found in the final_transaction table) and customer ratings for branches (found in the branch_office table). I also added several new columns, such as *persentase_gross_laba*, *nett_sales*, dan *nett_profit*.

## Dashboard
![image](https://github.com/user-attachments/assets/db120cb4-a076-41b2-bd6e-3dafbaa4f5bc)

## Business Insight and Recommendation

### Business Insight

1. Annual Income Stability
   
Despite minor fluctuations, Kimia Farma's annual revenue has been relatively stable, remaining between 13 and 14 trillion rupiah over the past four years. This suggests that Kimia Farma has a robust business model and can maintain stable financial performance. This stability could indicate the success of the company's long-term strategy, but further analysis is needed to understand the factors influencing these minor fluctuations.

2. West Java Domination
   
West Java demonstrates significant dominance in both the number of branch transactions and net sales, indicating its importance as a key market for Kimia Farma. The company should analyze the factors driving West Java's success and consider replicating these strategies in other provinces.

3. Variations in Branch Performance Between Provinces
   
Despite stable annual revenues, significant variations in branch performance exist across provinces, as evidenced by the differences in net sales and the number of transactions between provinces. The company should conduct a more in-depth analysis to identify the factors influencing branch performance in each province. These factors may include demographics, competition, and operational efficiency.

4. Branch with the Highest Rating

The dashboard highlights the five branches with the highest customer ratings. This information identifies the branches with the highest customer satisfaction. The company can analyze best practices from these high-performing branches and implement them in other branches to improve overall customer satisfaction.

5. Geographical Profit Distribution

The map visualizes the geographical distribution of profit by province. This visualization highlights the areas with the highest profitability for Kimia Farma. The company can leverage this information to identify growth opportunities in high-profitability areas and address challenges in low-profitability areas.

### Business Recommendation

1. In-depth Analysis of the West Java Market: Conduct an in-depth analysis to understand the success factors in West Java and replicate them in other regions.
2. Branch Performance Evaluation: Conduct branch performance evaluations in provinces with low performance to identify areas for improvement.
3. Expansion Strategy: Consider a more aggressive expansion strategy in regions with high growth potential.
4. Focus on Customer Satisfaction: Continuously improve service and product quality to maintain and increase branch ratings.
5. Optimize Profit Distribution: Analyze the factors that influence profitability in each province and optimize business strategies.
