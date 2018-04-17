FROM ruby:2.5
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev
RUN mkdir /HFLD-Paperwork-DB
WORKDIR /HFLD-Paperwork-DB
ADD Gemfile /HFLD-Paperwork-DB/Gemfile
ADD Gemfile.lock /HFLD-Paperwork-DB/Gemfile.lock
RUN bundle install
ADD . /HFLD-Paperwork-DB

ENV DBHOST="hostname"
ENV DBUSERNAME="username"
ENV DBPASSWORD="password"
