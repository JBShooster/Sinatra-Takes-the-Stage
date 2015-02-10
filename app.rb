require 'sinatra'
require 'sinatra/reloader'
require 'better_errors'

require './greeter'

configure :development do
  use BetterErrors::Middleware
  BetterErrors.application_root = __dir__
end

#before filter
before do
	@greeter = Greeter.new
end

#our routes
get '/hi' do
	@greeter.greet
end

#return quotes matching a tag
get '/quote/:tag' do
  @greeter.quote params[:tag]

end

# default /quote route
get '/quote' do
  @greeter.quote
end

get '/photo' do
  send_file "public/#{rand(1..4)}.jpg"
end

# get '/quote/:tag' do
#   quotes = {
# 		:alcohol => ["Alcohol may be man's worst enemy, but the bible says love your enemy. ― Frank Sinatra"],
# 		:life => ["You only live once, and the way I live, once is enough. ― Frank Sinatra", "For what is a man, what has he got. If not himself, then he has naught. - Frank Sinatra"]
# 	}

#   [
#   "<h1>Quotes matching tag: #{params[:tag]}</h1>", 
#   "<ul>"
#   ].concat(
#   	quotes[params[:tag].to_sym].map do |quote|
#   		"<li><h3>#{quote}</h3></li>"
#   	end
#   	).push("</ul>")
# end

