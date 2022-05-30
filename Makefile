export PGPASSWORD=postgres

docker-compose-pg-up:
	docker-compose -f docker-compose-pg-only.yml up

docker-compose-pg-down:
	docker-compose -f docker-compose-pg-only.yml down

postgres-install-client:
	brew install libpq
	echo 'export PATH="/opt/homebrew/opt/libpq/bin:$$PATH"' >> ~/.zshrc

postgres-psql:
	psql -h localhost -U postgres
