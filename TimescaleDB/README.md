# TimescaleDB sandbox

**[TimescaleDB](https://www.timescale.com/)** is extension of **[PostgreSQL](https://www.postgresql.org/)**. This setup also includes the **[PostGIS](https://postgis.net/)** geospatial extension. To use PostGIS functionality, you need to activate it by **[sql query](#sql)**.


Database versions:
* PostgreSQL 12.7
* PostGIS 2.5.5


### Usage

1. navigate in terminal from the top of the repository to the TimescaleDB directory
```
cd TimescaleDB
```

2. run docker-compose
```
docker-compose up
```

### SQL 

Check the PostgreSQL version
```sql
SELECT version();
```

Activate PostGIS extension
```sql
CREATE EXTENSION postgis;
CREATE EXTENSION postgis_topology;
```

Check the PostGIS version
```sql
SELECT PostGIS_Full_Version();
```

### Database settings

POSTGRES_DB: deault - `sandboxdb`  
POSTGRES_USER: deault - `pgadmin`  
POSTGRES_PASSWORD: deault - `password`  

For further optional settings see the PostgreSQL **[Official Image
](https://hub.docker.com/_/postgres)** on DockerHub.

### PgAdmin settings

PGADMIN_DEFAULT_EMAIL: deault - `pgadmin4@pgadmin.org`  
PGADMIN_DEFAULT_PASSWORD: deault - `admin`  

PgAdmin localhost URL:
```
http://localhost:5050
```
