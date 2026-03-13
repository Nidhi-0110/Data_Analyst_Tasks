# Retail Business Performance & Profitability Analysis

## Project Overview
This project analyzes retail transactional data to uncover **profit-draining product categories, inventory inefficiencies, and seasonal sales patterns**. The goal is to help retail businesses make **data-driven decisions** to improve profitability, optimize inventory turnover, and identify high-risk or underperforming products.
The project integrates **SQL, Python (Pandas, Seaborn), and Power BI/Tableau** to create a complete analytics pipeline—from data cleaning to interactive dashboard insights.

---

## Objectives
* Identify **categories and sub-categories that reduce overall profitability**
* Detect **loss-making or low-margin products**
* Analyze **inventory turnover and slow-moving products**
* Discover **seasonal sales and profit trends**
* Provide **actionable business insights** for inventory optimization

---

## Dataset Features
The dataset contains retail transaction information with the following key fields:
* Order Details: `order_id`, `order_date`, `ship_date`, `order_priority`
* Customer Information: `customer_name`, `segment`
* Geography: `state`, `country`, `market`, `region`
* Product Information: `product_id`, `category`, `sub_category`, `product_name`
* Financial Metrics: `sales`, `quantity`, `discount`, `profit`, `shipping_cost`
* Time Features: `year`, `month`, `quarter`
* Derived Metric: `profit_margin`

---

## Tools & Technologies
* **SQL** – Data cleaning, preprocessing, and profitability analysis
* **Python (Pandas, NumPy, Seaborn, Matplotlib)** – EDA, feature engineering, segmentation, and statistical analysis
* **Power BI / Tableau** – Interactive dashboard visualization
* **GitHub** – Version control and project documentation

---

## Project Workflow

### 1. Data Cleaning (SQL)
* Remove duplicate transactions
* Handle missing or invalid financial values
* Standardize category and region names
* Validate date ranges
* Create cleaned SQL views instead of modifying raw data

### 2. Exploratory Data Analysis (Python)
* Analyze sales and profit distribution
* Evaluate category and sub-category performance
* Identify loss-making SKUs
* Detect revenue vs profit mismatches

### 3. Feature Engineering
Key derived features created for analysis:
* Profit Margin
* Monthly and Quarterly Sales
* Inventory Days
* Average Daily Sales
* Profit Segmentation

### 4. Segmentation
Products were segmented into:
* **Fast-moving**
* **Moderate**
* **Slow-moving**

Profitability segments:
* **Loss**
* **Low Margin**
* **High Margin**
A **risk category** was created to highlight slow-moving and loss-making products.

### 5. Visual Analytics
Visualizations created include:
* Profit Margin by Category
* Profit Contribution by Sub-category
* Inventory Risk Scatter Plot
* Monthly Sales & Profit Trends
* Seasonal Profitability Heatmap
* Loss-Making Product Table

---

## Dashboard Overview
### Dashboard Title
**Retail Business Performance & Profitability Dashboard**

### Key Sections
**1. Profitability Overview**
* Profit Margin by Category (Bar Chart)
* Profit Contribution by Sub-category (Treemap)
* KPI Cards: Total Sales, Total Profit, Average Profit Margin

**2. Inventory Risk Monitor**
* Scatter Plot: Inventory Days vs Profit Margin
* Identification of slow-moving and low-profit products

**3. Seasonal Performance**
* Monthly Sales & Profit Trend
* Month vs Category Profitability Heatmap

**4. Interactive Filters**
* Region
* Category
* Sub-category
* Segment
* Quarter / Month

**5. Strategic Insights Panel**
* Top Loss-Making Products
* Overstocked Items
* High-Margin Seasonal Winners

---

## Key Business Insights
* Some product categories generate **high revenue but low profit margins**
* Slow-moving products create **inventory holding risks**
* Seasonal trends significantly impact **sales and profitability**
* Certain SKUs consistently generate **negative profit**

---

## Strategic Recommendations
* Reduce stock for slow-moving products
* Promote or discount loss-making inventory
* Increase stock for high-margin seasonal items
* Optimize pricing strategies for low-margin products

---

## Author
Data Analytics Project demonstrating skills in **SQL, Python, and Business Intelligence dashboards** for retail performance analysis.

---

