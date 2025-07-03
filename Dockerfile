# syntax = docker/dockerfile:1

# Make sure RUBY_VERSION matches the Ruby version in .ruby-version
ARG RUBY_VERSION=3.3.7
FROM ruby:$RUBY_VERSION-alpine

# Rails app lives here
WORKDIR /rails

# Install base packages
RUN apk add --no-cache \
    bash \
    curl \
    jemalloc \
    postgresql-client \
    tzdata \
    yaml \
    yaml-dev \
    git \
    build-base \
    libpq \
    libpq-dev \
    python3

ENV RAILS_ENV="development" \
    BUNDLE_PATH="/usr/local/bundle" \
    BUNDLE_WITHOUT=""

# Install application gems
COPY Gemfile Gemfile.lock ./
RUN bundle install

# Copy entrypoint
COPY bin/docker-entrypoint /rails/bin/
RUN chmod +x /rails/bin/docker-entrypoint

# Run and own only the runtime files as a non-root user for security
RUN addgroup -S rails && adduser -S rails -G rails \
    && mkdir -p db log storage tmp \
    && chown -R rails:rails db log storage tmp /usr/local/bundle
USER rails

# Entrypoint prepares the database.
ENTRYPOINT ["/rails/bin/docker-entrypoint"]

# Start the server by default, this can be overwritten at runtime
EXPOSE 3000
CMD ["./bin/rails", "server"]
