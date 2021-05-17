require_relative 'config/environment'
require 'pry'

class App < Sinatra::Base
  get '/reversename/:name' do
    @user_name = params[:name].reverse
    "#{@user_name}"
  end

  get '/square/:number' do
    @number = (params[:number].to_i**2).to_s
    "#{@number}"
  end

  get '/say/:number/:phrase' do
  @phrases = params[:phrase] * params[:number].to_i
  "#{@phrases}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word_1 = params[:word1]
    @word_2 = params[:word2] 
    @word_3 = params[:word3]
    @word_4 = params[:word4]
    @word_5 = params[:word5]
    "#{@word_1} #{@word_2} #{@word_3} #{@word_4} #{@word_5}."
  end

  get "/:operation/:number1/:number2" do
    params[:operation]
    params[:number1]
    params[:number2]
    
    if params[:operation] == "add"
      @add = (params[:number1].to_i + params[:number2].to_i).to_s
      "#{@add}"
    
    elsif params[:operation] == "subtract"
      @subtract = (params[:number1].to_i - params[:number2].to_i).to_s
      "#{@subtract}"
    
    elsif params[:operation] == "multiply"
      @multiply = (params[:number1].to_i * params[:number2].to_i).to_s
      "#{@multiply}"
    
    elsif params[:operation] == "divide"
      @divide = (params[:number1].to_i / params[:number2].to_i).to_s
      "#{@divide}"
    end  
  end
end