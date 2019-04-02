require_relative 'config/environment'

class App < Sinatra::Base
  get '/' do
    erb :index
  end
  get '/reversename/:name'  do
    @name=params[:name]
    erb :reversename
  end
  get '/square/:number' do
    @number=params[:number].to_i
    erb :square
  end
  get '/say/:number/:phrase'  do
    @number=params[:number].to_i
    @phrase=params[:phrase]
    erb :sayphrase
  end
  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word1=params[:word1]
    @word2=params[:word2]
    @word3=params[:word3]
    @word4=params[:word4]
    @word5=params[:word5]
    @space=" "
    @dot="."
    return @word1+@space+@word2+@space+@word3+@space+@word4+@space+@word5+@dot
  end
  get '/:operation/:number1/:number2' do
    @operation=params[:operation]
    @num1=params[:number1].to_i
    @num2=params[:number2].to_i
    erb :operation
  end
end