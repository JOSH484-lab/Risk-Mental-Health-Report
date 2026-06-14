# Teen Mental Health Risk Analytics

## Project Overview

This project analyzes the relationship between social media behavior, lifestyle habits, and mental health outcomes among teenagers. Using SQL for data transformation and Power BI for interactive reporting, the project identifies key factors associated with stress, anxiety, addiction, and depression.

The objective is to help stakeholders understand mental health trends, identify high-risk student groups, and support data-driven decision-making.

---

## Dataset Information

**Dataset Size:** 1,200 Records

### Features

* Age
* Gender
* Daily Social Media Hours
* Platform Usage (Instagram, TikTok, Both)
* Sleep Hours
* Screen Time Before Sleep
* Academic Performance
* Physical Activity
* Social Interaction Level
* Stress Level
* Anxiety Level
* Addiction Level
* Depression Label

---

## Project Objectives

* Analyze teenage mental health indicators.
* Measure the impact of social media usage on mental well-being.
* Identify high-risk student groups.
* Explore relationships between sleep, physical activity, and mental health.
* Build an interactive dashboard for business insights and decision-making.

---

## Tools & Technologies

### SQL

Used for:

* Data Cleaning 
* Data Validation
* Feature Engineering
* KPI Calculations
* Analytical Views

### Power BI

Used for:

* Interactive Dashboards
* KPI Monitoring
* Trend Analysis
* Risk Segmentation
* Data Storytelling

---

## Data Preparation

### Data Quality Checks

* Checked for missing values
* Validated score ranges
* Verified categorical values
* Reviewed data consistency

### Feature Engineering

#### Mental Health Risk Score

Mental Health Risk Score was calculated as:

Risk Score = (Stress Level + Anxiety Level + Addiction Level) / 3

#### Risk Categories

| Score Range | Category      |
| ----------- | ------------- |
| < 3       | Low Risk      |
| 3 - < 7     | Moderate Risk |
| >= 7        | High Risk     |

#### Sleep Categories

| Sleep Hours | Category     |
| ----------- | ------------ |
| < 6         | Poor Sleep   |
| 6 - 8       | Normal Sleep |
| > 8         | Good Sleep   |

#### Social Media Categories

| Daily Hours | Category      |
| ----------- | ------------- |
| < 2         | Light User    |
| 2 - 5       | Moderate User |
| > 5        | Heavy User    |

---

## Analytics Framework

### 1. Descriptive Analytics

Answering:

* How many students are in the dataset?
* What is the average stress level?
* What is the depression rate?
* Which social media platforms are most used?

### 2. Diagnostic Analytics

Answering:

* Why are some students experiencing higher stress?
* Does sleep duration influence mental health?
* Is social media usage associated with anxiety and addiction?
* Does physical activity reduce mental health risks?

### 3. Predictive Thinking

Identifying:

* Students likely to belong to high-risk groups.
* Behavioral patterns associated with depression.

### 4. Prescriptive Analytics

Providing recommendations such as:

* Promoting healthy sleep habits.
* Reducing excessive screen time.
* Encouraging physical activity.
* Supporting high-risk student groups.

---

## Dashboard Pages

### Executive Overview

Provides a high-level summary of mental health metrics and risk distribution.

### Mental Health Analysis

Analyzes stress, anxiety, addiction, and risk categories.

### Depression Analysis

Explores depression rates across demographic and behavioral segments.

### Digital Behavior Analysis

Examines social media usage patterns and their relationship with mental health.

### Lifestyle Analysis

Investigates sleep, physical activity, and social interaction impacts.

### Risk Segmentation

Identifies high-risk groups and highlights recommended interventions.

---

## Key KPIs

* Total Students
* Average Stress Level
* Average Anxiety Level
* Average Addiction Level
* Depression Rate
* High-Risk Students
* Mental Health Risk Score
* Platform Usage Distribution

---

## Key Insights

* Higher social media usage is associated with increased stress and addiction levels.
* Poor sleep habits correlate with higher mental health risk scores.
* Physical activity appears to support better mental well-being.
* High-risk students can be identified through combined behavioral and mental health indicators.

---

## Project Outcome

This project demonstrates an end-to-end analytics workflow, including:

* Data Cleaning and Transformation
* SQL Analytics
* Feature Engineering
* KPI Development
* Dashboard Design
* Business Intelligence Reporting
* Data-Driven Recommendations

The final dashboard enables stakeholders to monitor mental health trends, identify vulnerable student groups, and support proactive intervention strategies.
