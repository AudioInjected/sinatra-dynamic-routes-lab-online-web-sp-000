require_relative 'config/environment'

class App < Sinatra::Base
  get '/reversename/:name' do 
    @name = params[:name]
    "#{@name.reverse}"
  end 
  
  get '/square/:num' do 
    @num = params[:num]
    "#{@num * @num}"
  end 
  
  get '/say/:number/:phrase' do 
    @number = params[:number]
    @phrase = params[:phrase]
    
    
  end 
end