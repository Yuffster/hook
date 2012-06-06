require 'rubygems'
require 'sinatra'
require 'json'
require 'logger'

before do
  #only allow access to GitHub.
  ips = ['207.97.227.253', '50.57.128.197', '108.171.174.178'];
  halt 404, "D:&lt;" unless ips.find_index(@env['REMOTE_ADDR'])
end

post '/post-receive' do
  branch = JSON.parse(params[:payload])['ref'].split('/').pop
  Logger.new('log.txt').info(`./update_branch.sh #{branch}`)
end
