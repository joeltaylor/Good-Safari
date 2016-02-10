require_relative './../good_safari.rb'
require 'rack/test'

describe 'The GoodSafari App' do
  include Rack::Test::Methods

  def app
    Sinatra::Application
  end

  describe 'GET#index' do
    it "loads the root path" do
      get '/'
      expect(last_response).to be_ok
    end
  end

  describe 'POST#search' do
    it "returns a JSON list of books" do
      post '/search', query: "ruby"
      expect(last_response.status).to eq(200)
    end
  end
end
