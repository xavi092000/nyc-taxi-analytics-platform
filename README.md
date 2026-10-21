# NYC Taxi Analytics with dbt

A learning-oriented analytics project with staging, intermediate, fact, and dimension SQL models for NYC taxi data.

## Scope and provenance

This repository follows the NYC taxi course-based learning context, including the `taxi_rides_ny` dbt project and course-oriented local infrastructure. It is an adapted learning artifact, not a verified production warehouse. See [DataTalksClub](https://github.com/DataTalksClub).

The reviewable work is the SQL model structure, source configuration, and development environment. Exact attribution of upstream examples versus personal changes has not been reconstructed.

## Review path

- [Source definitions](models/staging/sources.yml): local Parquet and compressed CSV inputs.
- [Intermediate models](models/intermediate/): normalized and combined trips.
- [Marts](models/marts/): trip facts, dimensions, and monthly revenue.
- [Project configuration](dbt_project.yml).

## Reproduction prerequisites and limits

The public snapshot is **not a self-contained dbt demo**. It requires a matching local dbt profile and adapter, taxi files under the paths in `sources.yml`, and the `taxi_zone_lookup` seed referenced by `dim_zones.sql` (not included). The `tests/` and `snapshots/` folders are placeholders, not evidence of an implemented custom test or snapshot suite.

The Compose file is a local PostgreSQL/Kestra development environment, not the DuckDB/dbt runtime or a production deployment. It references an external `.env_encoded` file and environment variables that must be supplied locally. Do not commit credentials. Historical embedded Redshift connection settings have been replaced with required environment references; previously exposed credentials must be rotated outside this repository.

No current end-to-end dbt build or cloud deployment is claimed. Complete the missing inputs and validate the models before operational use.

Maintained by Felix Brillant.
