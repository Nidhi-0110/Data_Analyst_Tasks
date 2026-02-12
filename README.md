# Data Cleaning and Preprocessing - Netflix Dataset

## 📌 Project Overview
This project focuses on cleaning and preprocessing a raw dataset as part of the Data Analyst Internship Task 1.  
The dataset used is the **Netflix Movies and TV Shows dataset**. The goal is to handle missing values, remove duplicates, standardize data formats, and prepare the dataset for analysis.

---

## 📂 Dataset Information
- Dataset Name: Netflix Movies and TV Shows
- File Name: netflix_titles.csv
- Source: Kaggle

---

## 🛠 Tools Used
- Jupyter Notebook / VS Code

---

## 🔍 Steps Performed
### 1️⃣ Loading the Dataset
- Loaded the dataset using Pandas.
- Checked basic information like rows, columns, and data types.

### 2️⃣ Handling Missing Values
- Identified missing values using `isnull()`.
- Replaced missing values with "Unknown" using `fillna()`.

### 3️⃣ Removing Duplicate Records
- Removed duplicate rows using `drop_duplicates()`.

### 4️⃣ Standardizing Data
- Converted text values to lowercase.
- Removed extra spaces from text columns.

### 5️⃣ Handling Date Formats
- Converted date columns into a standard datetime format using `pd.to_datetime()`.

### 6️⃣ Renaming Columns
- Renamed column headers to lowercase and replaced spaces with underscores.

### 7️⃣ Saving the Cleaned Dataset
- Saved the cleaned dataset as `netflix_titles_task.csv`.

---

## 📊 Results
- Missing values handled successfully.
- Duplicate records removed.
- Data formats standardized.
- Dataset prepared for further analysis.

---

## 📁 Project Files
- netflix_titles.csv → Original dataset
- netflix_titles_cleaned.csv → Cleaned dataset
- data_cleaning.py / notebook.ipynb → Python code
- README.md → Project documentation

---

## ✅ Conclusion
This task helped in understanding real-world data issues such as missing values, duplicates, and inconsistent formats.  
Data cleaning is a crucial step before data analysis and modeling.

---

## 👤 Author
Name: Nidhi patel 
Role: Data Analyst Intern  
