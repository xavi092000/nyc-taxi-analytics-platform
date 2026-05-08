\# NYC Taxi Analytics Engineering Platform



Production-style cloud analytics engineering project focused on modern ELT pipelines, dbt data modeling, Docker orchestration, and analytics engineering workflows.



\---



\## Core Engineering Domains



\- Analytics Engineering



\- Cloud Data Engineering



\- ELT Pipelines



\- Data Modeling



\- Dimensional Modeling



\- Data Warehouse Architecture



\- SQL Transformation Engineering



\- Production-style dbt Workflows



\- Dockerized Analytics Pipelines



\---



\## Technologies



\- Python



\- dbt



\- Docker



\- SQL



\- Analytics Engineering



\- Data Warehousing



\- Dimensional Modeling



\- ELT Pipelines



\- Jupyter Notebook



\---



\---



\## High-Level Architecture



```mermaid

flowchart LR



&#x20;   A\[Raw NYC Taxi Data] --> B\[Staging Layer]



&#x20;   B --> C\[Intermediate Transformations]



&#x20;   C --> D\[Fact Tables]



&#x20;   C --> E\[Dimension Tables]



&#x20;   D --> F\[Analytics Marts]



&#x20;   E --> F



&#x20;   F --> G\[Reporting \& Analytics]



&#x20;   H\[Docker Environment] --> I\[dbt Pipeline]



&#x20;   I --> B

```



\---



\## Pipeline Architecture



The platform follows a production-style layered analytics engineering architecture:



\- \*\*Staging Layer\*\*

&#x20; - Raw ingestion normalization

&#x20; - Source standardization

&#x20; - Initial cleansing



\- \*\*Intermediate Layer\*\*

&#x20; - Business logic transformations

&#x20; - Data enrichment

&#x20; - Aggregation preparation



\- \*\*Mart Layer\*\*

&#x20; - Fact tables

&#x20; - Dimension tables

&#x20; - Analytics-ready datasets



\- \*\*Reporting Layer\*\*

&#x20; - Analytical queries

&#x20; - Revenue analytics

&#x20; - Vendor and trip analysis







\## Repository Structure



```text

nyc-taxi-analytics-platform/



│



├── models/

│   ├── staging/

│   ├── intermediate/

│   ├── marts/

│

├── macros/

├── tests/

├── snapshots/

│

├── dbt\_project.yml

├── packages.yml

├── docker-compose.yml

│

└── README.md

```



\---



\## Key Engineering Features



\- Modular dbt transformation layers



\- Staging, intermediate, and marts architecture



\- Fact and dimension modeling



\- SQL transformation pipelines



\- Production-oriented analytics workflows



\- Dockerized local analytics environment



\- Data warehouse modeling practices



\- Source and schema management



\- Reusable analytics macros



\---



\## Objective



This project demonstrates production-style analytics engineering and modern data transformation workflows using dbt, SQL modeling, and containerized analytics environments.



The repository explores scalable analytics engineering concepts including staging layers, marts modeling, ELT workflows, and dimensional warehouse design.



\---



\## Author



Felix Brillant



AI / Cloud Data Engineering

