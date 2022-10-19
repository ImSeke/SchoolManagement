FROM ruby

RUN apt-get update && apt-get install -y nodejs npm
RUN npm install -g yarn
RUN apt-get -y install -qq --force-yes cron

RUN mkdir /SchoolManagement
WORKDIR /SchoolManagement
