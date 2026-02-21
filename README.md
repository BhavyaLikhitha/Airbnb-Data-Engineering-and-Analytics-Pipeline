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
steps for doing:
- uv init
- uv sync (Create a virtual env)
- uv add dbt-core
- uv add dbt-snowflake (connecting an adapter)
- dbt init

- ..\.\.venv\Scripts\dbt.exe debug
- .\.venv\Scripts\Activate.ps1

- macros are like used for doing a repetetive task on multiple tables (transformations)
-  have to build silver and gold layers

- in silver layer we will upsert the data , new rows aded in bronxe

- meta data driven pipelines using dbt and jinja and configurations in jinja (obt - one big table)
- now transform obt to facts and dim

- scd 2 (we create versions or start date and end date)
- snapshots 

- ephimeral models
dbt test, dbt run --select gold, dbt compile, dbt snapshot, dbt build