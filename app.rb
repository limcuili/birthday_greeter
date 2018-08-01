require 'sinatra'
require 'sinatra/base'

class Greeter < Sinatra::Base

  get '/' do
    erb(:index)
  end
  #
  # post
  #
  # redirect
  #

  get '/greeting' do
    p params
    @name = params[:name]
    @birth_day = params[:birth_day]
    @birth_month = params[:birth_month]
    erb(:greeting)
  end

end
