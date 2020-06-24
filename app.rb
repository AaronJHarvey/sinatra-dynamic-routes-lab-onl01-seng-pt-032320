require_relative 'config/environment'

class App < Sinatra::Base
  get '/reversename/:name' do 
    name = params[:name]
    name.reverse
  end

  get '/square/:number' do 
    number = params[:number].to_i 
    num_squared = number**2
    num_squared.to_s
  end 
  
  get '/say/:number/:phrase' do 
    params[:number].to_i.times {puts params[:phrase]}
   end 
end