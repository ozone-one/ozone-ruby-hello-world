FROM ruby:2.2.0
RUN mkdir /app
WORKDIR /app
ADD . /app
RUN bundle install
CMD bundle exec puma config.ru -p 3000 -e production