require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    name = params[:name]
    name.reverse!
    "#{name}"
  end

  get '/square/:number' do
    num = params[:number].to_i
    n = num * num
    "#{n.to_s}"
  end

  get '/say/:number/:phrase' do
    num = params[:number].to_i
    phrase_arr = []
    num.times do
      phrase_arr << params[:phrase]
    end
    "#{phrase_arr.join(" ")}."
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    array = []
    array << params[:word1]
    array << params[:word2]
    array << params[:word3]
    array << params[:word4]
    array << params[:word5]

    "#{array.join(" ")}."

  end

  get '/:operation/:number1/:number2' do
  @operation = params[:operation]
  @num1 = params[:number1].to_i
  @num2 = params[:number2].to_i
  erb :operations
end



end
