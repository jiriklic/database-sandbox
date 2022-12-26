.PHONY: all
all: help

neo4j-up:
	@docker-compose -f Neo4j/docker-compose.yml up -d

neo4j-down:
	@docker-compose -f Neo4j/docker-compose.yml down

postgresql-up:
	@docker-compose -f PostgreSQL/docker-compose.yml up -d

postgresql-down:
	@docker-compose -f PostgreSQL/docker-compose.yml down

timescaledb-up:
	@docker-compose -f TimescaleDB/docker-compose.yml up -d

timescaledb-down:
	@docker-compose -f TimescaleDB/docker-compose.yml down

help:
	@echo "Available make targets:"
	@echo " make help              - Print help"
	@echo " make neo4j-up          - Run Neo4j Docker container"
	@echo " make neo4j-down        - Shut down Neo4j Docker container"
	@echo " make postgresql-up     - Run PostgreSQL Docker container"
	@echo " make postgresql-down   - Shut down PostgreSQL Docker container"
	@echo " make timescaledb-up    - Run TimescaleDB Docker container"
	@echo " make timescaledb-down  - Shut down TimescaleDB Docker container"
	@echo ""