# Rails Skeleton API
This Rails skeleton API project was created to speed-up the development of assessments, challenges or maybe if you just want to try new things as am API sandbox.

## Start
#### Requirements
- Copy `.env.example` file and rename it to `.env` for development environment.
- Docker Engine to run containers. eg: Docker Desktop or [Colima](https://github.com/abiosoft/colima?tab=readme-ov-file#installation)
```shell
colima start
```
- Install [docker-compose](https://formulae.brew.sh/formula/docker-compose)
```shell
docker-compose build
docker-compose up
```

## OpenAPI/Swagger Documentation Setup

This project uses **rswag-rails** for OpenAPI 3.0 documentation.

### Quick Start

1. **Install**: `bundle install`
2. **Generate docs**: `bundle exec rake rswag:generate`
3. **View docs**: Visit `http://localhost:3000/api-docs`

### Available URLs

- **Swagger UI**: `http://localhost:3000/api-docs`
- **OpenAPI JSON**: `http://localhost:3000/api-docs/v1/swagger.json`

### Adding New Endpoints

1. Create controller and routes
2. Write RSpec test with `swagger_doc: 'v1/swagger.json'`
3. Run `bundle exec rake rswag:generate`

## Features
- Ruby 3.4.2-alpine
- Rails 7.2.0
- Postgres 17-alpine
- JBuilder templates
- OpenAPI Specifications

###### Test environment
- RSpec
- ShouldaMatchers
- Faker
- Factory bot

###### Other features
- Rubocop
- Annotate
- Simplecov
