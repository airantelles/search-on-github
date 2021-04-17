FROM ruby:2.7.0
RUN apt-get update -qq && apt-get install -y nodejs postgresql-client
WORKDIR /search-on-github
COPY Gemfile /search-on-github/Gemfile
COPY Gemfile.lock /search-on-github/Gemfile.lock
RUN bundle install
COPY . /search-on-github


COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3000


CMD ["rails", "server", "-b", "0.0.0.0"]