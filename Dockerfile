FROM ruby:2.3

RUN mkdir /sa_session_ss
WORKDIR /sa_session_ss

ADD Gemfile /sa_session_ss/Gemfile
ADD Gemfile.lock /sa_session_ss/Gemfile.lock

RUN bundle install
ADD . /sa_session_ss
