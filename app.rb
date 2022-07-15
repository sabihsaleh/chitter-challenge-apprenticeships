require 'sinatra/base'

class Chitter < Sinatra::Base
  get '/test' do
    'Test page'
  end
  get '/' do
    erb :index
  end
  get '/peeps' do
  @peeps = ["Hello, I am peep", "I am also a peep", "Also a peep"]
  erb :peeps
  end

  run! if app_file == $0
end
