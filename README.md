# Spark Medallion Architecture Demo

A simple demo of Apache Spark with Medallion Architecture (Bronze → Silver → Gold layers).

**Presented at UAE Software Engineers & QA Community** — [📄 View Presentation](apache_spark_uaeswe_presentation.pdf)

## What is This?

This project shows how to build a modern data pipeline using Apache Spark:
- **Bronze**: Store raw data
- **Silver**: Clean and validate data
- **Gold**: Create business reports

## Requirements

- Docker Desktop
- 8GB RAM

## How to Run

1. **Clone the repo**
```bash
git clone https://github.com/sudhirnikam/spark-medallion-architecture-demo.git
cd spark-medallion-architecture-demo
```

2. **Start everything**
```bash
docker-compose up -d
```

3. **Open Jupyter Notebook**
- Go to: http://localhost:8888
- Run notebooks in order: `src_to_tbl_load/` → `etl_scripts/bronze_to_silver_load/` → `etl_scripts/silver_to_gold_load/`

4. **Stop everything**
```bash
docker-compose down
```

## What's Included

- ✅ Spark cluster (1 master + 3 workers)
- ✅ MinIO for storage
- ✅ PostgreSQL for final data
- ✅ Jupyter notebooks with examples

## Access Points

| Service | URL |
|---------|-----|
| Jupyter Notebook | http://localhost:8888 |
| Spark UI | http://localhost:8080 |
| MinIO | http://localhost:9001 |
| PostgreSQL | localhost:5432 (DB: gold_db) |

## What You'll Learn

- How to process large data files with Spark
- How to clean and validate data
- How to build data pipelines
- Bronze → Silver → Gold pattern

## Demo Notebooks

1. **Source to Bronze** (`src_to_tbl_load/`) - Load raw CSV data
2. **Bronze to Silver** (`etl_scripts/bronze_to_silver_load/`) - Remove duplicates, fix nulls
3. **Silver to Gold** (`etl_scripts/silver_to_gold_load/`) - Calculate business metrics

## Contact

**Sudhir Nikam**
- 🌐 [sudhirnikam.me](https://sudhirnikam.me)
- 💼 LinkedIn: [linkedin.com/in/sudhirnikam](https://linkedin.com/in/sudhirnikam)

---

⭐ Star this repo if you found it useful!