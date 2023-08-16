require 'sinatra'

get '/' do
  "🐼" * 1000
end

def test_hello_world
  get '/'
  assert last_response.ok?
  assert_equal "🐼" * 1000, last_response.body
end
