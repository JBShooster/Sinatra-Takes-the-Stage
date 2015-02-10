require 'sinatra'
require 'sinatra/reloader'
require 'better_errors'

configure :development do
  use BetterErrors::Middleware
  BetterErrors.application_root = __dir__
end

get '/add/:add1/:add2' do
  num1 = params[:add1].to_i
  num2 = params[:add2].to_i
  "The sum is #{num1 + num2}"
end

get '/sub/:minus1/:minus2' do
  num1 = params[:minus1].to_i
  num2 = params[:minus2].to_i
  "The sum is #{num1 - num2}"
end

get '/multiply/:multiple1/:multiple2' do
  num1 = params[:multiple1].to_i
  num2 = params[:multiple2].to_i
  "The product is #{num1 * num2}"
end

get '/divide/:div1/:div2' do
  num1 = params[:div1].to_i
  num2 = params[:div2].to_i
  begin
  	"The quotient is #{num1 / num2}"
  rescue Exception
  	"Don't divide by zero dumbass!"
  end
  
end