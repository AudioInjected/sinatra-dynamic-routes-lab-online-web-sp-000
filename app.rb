require_relative 'config/environment'

class App < Sinatra::Base
  get '/reversename/:name' do 
    @name = params[:name]
    "#{@name.reverse}"
  end 
  
  get '/square/:num' do 
    @num = params[:num].to_i
    "#{@num * @num}"
  end 
  
  get '/say/:number/:phrase' do 
    @number = params[:number].to_i
    @phrase = params[:phrase]
    @array = []
    @number.times {@array << @phrase}
    "#{@array}"
  end
  
  get '/say/:word1/:word2/:word3/:word4/:word5' do 
    @array = []
    params.collect {|k, v| @array << v}
    "#{@array.join(" ")}."
  end 
  
  
end