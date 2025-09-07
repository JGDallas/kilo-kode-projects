# Medallion dbt Project

This dbt project implements a Medallion architecture for data transformation.

## Architecture Layers

- **Bronze**: Raw data ingestion
- **Silver**: Cleaned and processed data
- **Gold**: Aggregated business-ready data

## Directory Structure

- `models/`: dbt models organized by layer
  - `bronze/`: Raw data models
  - `silver/`: Processed data models
  - `gold/`: Aggregated models
- `seeds/`: Static data files
- `tests/`: Data quality tests
- `macros/`: Reusable SQL macros
- `snapshots/`: Slowly changing dimension snapshots
- `analyses/`: Ad-hoc analysis queries

## Getting Started

1. Install dbt
2. Configure your database connection in `profiles.yml`
3. Run `dbt deps` to install packages
4. Run `dbt run` to build models
5. Run `dbt test` to execute tests