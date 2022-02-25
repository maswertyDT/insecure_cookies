FROM ruby:3.0.3

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY Gemfile Gemfile.lock ./
RUN bundle install

COPY src/ ./

CMD bundle exec rackup -o 0.0.0.0 -p 3000
