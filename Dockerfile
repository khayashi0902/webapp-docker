FROM ruby:2.5
RUN apt-get update
RUN apt-get install -y \
	build-essential \
	libpq-dev \
	nodejs \
	postgresql-client \
	yarn
WORKDIR /webapp
COPY Gemfile Gemfile.lock /webapp/
RUN bundle install