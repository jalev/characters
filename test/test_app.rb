require "test_helper"

class TestApp< Minitest::Test
  include Rack::Test::Methods
  
  def app
    Sinatra::Application
  end 

  context '/get' do
    should 'displays main page' do 
      get '/'
      assert last_response.ok?
    end 
  end 

end

