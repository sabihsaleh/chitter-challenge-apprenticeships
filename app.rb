require 'sinatra/base'
require_relative './lib/peeps'

class Chitter < Sinatra::Base
  get '/test' do
    'Test page'
  end

  get '/' do
    erb :index
  end

   get '/peeps' do
     @peeps = Peeps.all
     erb :peeps/index
   end

   post '/peeps' do
     Peeps.add(message: params[:message])
     redirect '/peeps'
   end

   get '/peeps/new' do
     erb :peeps/new
   end

   run! if app_file == $0
end
