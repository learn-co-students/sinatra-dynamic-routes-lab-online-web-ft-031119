require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @name= params[:name]
    "#{@name.reverse}"
  end

  get '/square/:number' do
    @num=params[:number].to_i
    @sq_num= @num*@num
    "#{@sq_num.to_s}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
"#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
 end

  get '/say/:number/:phrase' do
    @num=params[:number].to_i
    @phrase=params[:phrase]
    result = ""
      @num.times {result << @phrase+"\n"}
      result
  end

  get '/:operation/:number1/:number2' do
    @operation=params[:operation]
    @num1=params[:number1].to_i
    @num2=params[:number2].to_i
    @sum=0
    if @operation=="add"
    @sum= @num1 + @num2
      elsif @operation =="subtract"
      @sum= @num2 - @num1
        elsif @operation == "divide"
        @sum= @num1/@num2
          elsif @operation === "multiply"
          @sum= @num1 * @num2
        end
        "#{@sum}"
  end
end
