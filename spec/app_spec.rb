
require_relative '../app'

describe 'MyApp' do
  include Rack::Test::Methods

  def app
    Sinatra::Application
  end

  it 'returns hello world' do
    get '/'
    expect(last_response).to be_ok
    expect(last_response.body).to include('🐼 Hello World! 🐼')
  end

  it 'returns the correct content type' do
    get '/'
    expect(last_response.headers['Content-Type']).to include('text/html')
  end

  it 'returns a 404 status for unknown routes' do
    get '/unknown'
    expect(last_response.status).to eq(404)
  end
end
