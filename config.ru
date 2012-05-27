require 'rubygems'
require 'sinatra'

set :environment, :development

require 'app'
run Sinatra::Application
