require 'sinatra'
require 'sinatra/base'
require_relative './models/greeter.rb'
require_relative './models/calendar.rb'

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
    @name = session[:name]
    @birth_day = session[:birth_day]
    @birth_month = session[:birth_month]
    @message = Greeter.new(Date.new(2018,@birth_month.to_i,@birth_day.to_i)).greet
    erb(:greeting)
  end

end
