require 'minitest'
require 'minitest/autorun'
require 'minitest/reporters'
require 'shoulda/context'
require 'rack/test'

ENV['RACK_ENV'] = 'test'

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require File.expand_path '../../app.rb', __FILE__

