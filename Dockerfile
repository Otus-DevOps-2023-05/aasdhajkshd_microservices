FROM ruby:2.4.2

ADD ./reddit /reddit
RUN cd /reddit && ls && bundle install
ENV SERVER_IP=158.160.60.194
ENV REPO_NAME=23f03013e37f/reddit
ENV DEPLOY_USER=ubuntu
RUN cd /reddit && ruby simpletest.rb
