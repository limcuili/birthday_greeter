require 'sinatra'
require 'sinatra/base'

class Greeter < Sinatra::Base

  get '/' do
    erb(:index)
  end

  post '/name' do
    @name = params[:name]
    @birth_day = params[:birth_day]
    @birth_month = params[:birth_month]
    redirect ('/greeting')
  end

  get '/greeting' do
    erb(:greeting)
  end

end
