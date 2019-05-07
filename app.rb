require_relative 'config/environment'
require 'pry'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @reversed = params[:name].reverse
    "#{@reversed}"
  end

  get '/square/:number' do
    @squared = params[:number].to_i**2
    "#{@squared.to_s}"
  end

  get '/say/:number/:phrase' do
    @out = ""

    params[:number].to_i.times do
      @out += "#{params[:phrase]}\n"
    end

    @out

  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params.values.join(" ")}."
  end

  get '/:operation/:number1/:number2' do
    operation = params[:operation].to_s
    number1 = params[:number1].to_i
    number2 = params[:number2].to_i

    case operation
    when "add"
      answer = number1 + number2
    when "subtract"
      answer = number1 - number2
    when "multiply"
      answer = number1 * number2
    when "divide"
      answer = number1 / number2
    else
      "Invalid format"
    end

    answer.to_s
  end
end