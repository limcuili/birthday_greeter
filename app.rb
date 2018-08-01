require 'sinatra'
require 'sinatra/base'

class App < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/user' do
    session[:name] = params[:name]
    session[:birth_day] = params[:birth_day]
    session[:birth_month] = params[:birth_month]
    redirect ('/greeting')
  end

  get '/greeting' do
    p params
    @name = session[:name]
    @birth_day = session[:birth_day]
    @birth_month = session[:birth_month]
    erb(:greeting)
  end

end
