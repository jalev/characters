require "test_helper"

class TestApp< Minitest::Test
  include Rack::Test::Methods
  
  def app
    Sinatra::Application
  end 

  context 'API::V1::Character' do
    context 'errors' do  
      should 'when environment has no character set' do 
        assert_raises(RuntimeError){
          get '/character'
        }
      end
    end 

    context 'request' do 
      setup do 
        Sinatra::Application.set :character => "a"
      end 

      context '/character' do 
        should 'GET /character' do 
          get '/character/'
          assert last_response.ok?
          assert last_response.body.include?('character')
        end

      end 

      context '/info' do 
        should 'GET /info about current process' do 
          get '/info'
          assert last_response.ok?
          assert last_response.body.include?('host')
        end 
      end 
    end 
  end 
end

