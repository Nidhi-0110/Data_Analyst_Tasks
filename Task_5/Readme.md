# Task 5 – Exploratory Data Analysis (EDA)

## 📌 Project Overview
This project focuses on performing **Exploratory Data Analysis (EDA)** on the **Titanic dataset** to extract meaningful insights using statistical analysis and data visualization techniques.

EDA helps understand data structure, patterns, relationships, and anomalies before applying any machine learning models.

---

## 🎯 Objective
- Explore the dataset using statistical methods
- Identify patterns, trends, and correlations
- Handle missing values appropriately
- Visualize relationships between variables
- Summarize insights clearly

---

## 🧰 Tools & Libraries Used
- Python
- Pandas
- Matplotlib
- Seaborn
- Jupyter Notebook

---

## 📂 Dataset
- **Dataset Name:** Titanic Dataset
- **Source:** Kaggle
- **File Used:** `train.csv`

---

## 🔍 Steps Performed

### 1. Data Loading
- Loaded the dataset using Pandas
- Viewed initial rows to understand structure

### 2. Data Understanding
- Used `.info()` and `.describe()` for basic inspection
- Checked column types and missing values

### 3. Handling Missing Values
- Numerical columns filled using **median**
- Categorical columns filled using **mode**
- Cabin column filled with `"Unknown"`

### 4. Univariate Analysis
- Histograms for age distribution
- Boxplots for fare to detect outliers

### 5. Bivariate Analysis
- Survival analysis by gender
- Age vs survival comparison

### 6. Multivariate Analysis
- Pairplot for numerical relationships
- Heatmap for correlation analysis

---

## 📊 Key Insights
- Female passengers had a higher survival rate than males
- Higher ticket fare was positively correlated with survival
- Younger passengers had better survival chances
- Dataset contained missing values which were handled appropriately

---

## 📁 Project Structure
- eda_titanic.ipynb
- train.csv
- README.md

---

## ✅ Conclusion
This EDA helped uncover meaningful insights from the Titanic dataset using visualization and statistical methods. It strengthened understanding of data exploration techniques and prepared the dataset for further analysis or modeling.

---

## 👤 Author
- **Name:**Nidhi patel
- **Role:** Data Analyst Intern
