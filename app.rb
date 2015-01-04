require 'rubygems'
require 'sinatra'
require 'json'

configure do
    set :logging, true
    set :character => ENV.has_key?('CHARACTER') ? ENV['CHARACTER'] : nil
end

get '/character' do

  halt 500, {:error => "Character environment variable must be set!"}.to_json if settings.character.nil?
  return {:character => settings.character }.to_json

end
