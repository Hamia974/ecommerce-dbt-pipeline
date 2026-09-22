# End-to-End E-Commerce Data Pipeline with dbt

An industry-style data transformation project using Python, PostgreSQL, dbt and Docker to transform raw e-commerce data into analytics-ready models.

## Project Overview

This project demonstrates an end-to-end data engineering workflow for processing e-commerce order data.

Raw CSV and JSON data is first processed using Python and Pandas. The cleaned data is loaded into PostgreSQL, where dbt is used to create tested and documented transformation layers.

The project follows a staging → intermediate → marts architecture.

## Architecture

CSV / JSON
    ↓
Python + Pandas ETL
    ↓
PostgreSQL
    ↓
dbt Sources
    ↓
Staging
    ↓
Intermediate
    ↓
Marts
    ↓
Analytics / Power BI

## Tech Stack

- Python
- Pandas
- PostgreSQL
- dbt Core
- Docker
- SQL
- Git / GitHub

## Data Pipeline

### 1. Data Extraction

Raw e-commerce data is collected from CSV and JSON files containing:

- Orders
- Customers
- Products

### 2. Data Transformation

Python and Pandas are used to:

- Clean missing values
- Remove duplicate records
- Validate data
- Transform columns
- Combine datasets
- Calculate revenue

### 3. Data Loading

The processed data is loaded into PostgreSQL.

Main source table:

`public.orders`

### 4. dbt Transformation

dbt transforms the PostgreSQL source data through three layers:

```text
Source
  ↓
Staging
  ↓
Intermediate
  ↓
Marts