
require 'sinatra'

get '/' do
  "🐼 Hello World! 🐼"
end

def test_hello_world
  get '/'
  assert last_response.ok?
  assert_equal "🐼 Hello World! 🐼", last_response.body
end
