require 'juayderito'
require 'test/unit'
require 'rack/test'

set :environment, :test

class AppTest < Test::Unit::TestCase
  include Rack::Test::Methods

  def app
    Sinatra::Application
  end

  def test_home_page_response
    get '/'
    assert last_response.ok?
    assert last_response.body.include?('mexicanhacker')
  end
    
end