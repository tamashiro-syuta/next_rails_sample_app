FROM ruby:3.1.0
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /railsNextApp
WORKDIR /railsNextApp 
COPY Gemfile /railsNextApp/Gemfile
COPY Gemfile.lock /railsNextApp/Gemfile.lock
RUN bundle install
COPY . /railsNextApp

# シェルスクリプトを実行
COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3000

CMD ["rails", "server", "-b", "0.0.0.0"]