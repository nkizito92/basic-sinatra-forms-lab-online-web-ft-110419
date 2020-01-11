require 'sinatra/base'
require 'pry'
class App < Sinatra::Base

  get '/newteam' do
    erb :newteam
    binding.pry
  end 
  
  get '/newteam/:name' do
    @has_field = params[:name]
    @has_field
    erb :newteam
  end 
  
  post '/newteam' do 
    erb :team
  end 

end
