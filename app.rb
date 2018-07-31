require 'sinatra'
require 'sinatra/base'

class Greeter < Sinatra::Base

  get '/' do
    erb(:index)
  end

end
