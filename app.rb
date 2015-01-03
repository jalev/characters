require 'rubygems'
require 'sinatra'
require 'etcd'

set :logging, true

configure do
  set :etcd_host => ENV.has_key?('ETCD_HOST') ? ENV['ETCD_HOST'] : "localhost"
  set :etcd_port => ENV.has_key?('ETCD_PORT') ? ENV['ETCD_PORT'] : "4001"
  set :etcd_path => ENV.has_key?('ETCD_PATH') ? ENV['ETCD_PATH'] : "/service"
end

client = Etcd.client(:host => settings.etcd_host, :port => settings.etcd_port)

get '/' do
end

