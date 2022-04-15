#!/bin/bash


# install the dundeler gem
gem install bundler

#install the gems required for the app
bundle install 

#run the application
ruby src/hang.rb