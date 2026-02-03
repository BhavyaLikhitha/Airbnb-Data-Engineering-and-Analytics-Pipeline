# Airbnb-Data-Engineering-and-Analytics-Pipeline
Airbnb Data Engineering and Analytics Pipeline

## 🏗️ Architecture

![Airbnb End-to-End Data Engineering Architecture](architecture.png)

tech stack
- aws
- snowflake
- dbt

- created s3 in aws and added iam for user with attaching policies of amazons3 full access
- created snowflake database and schema as staging (intially to bring all csv files from s3 to snowflake)
- copied the tables from s3 to snowflake 

```bash
CREATE OR REPLACE STAGE snowstage
FILE_FORMAT = csv_format
URL='s3://airbnb-etl-pipeline/source/';
```
