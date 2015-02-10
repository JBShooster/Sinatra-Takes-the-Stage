class Greeter
  def greet
  	"Hey bitch! How goes it?"
  end

  def quote(tag)
  	quotes = {
  		:love => ["I am a thing of beauty.", 
  			"The best revenge is massive success.",
  			"For what is a man, what has he got. If not himself, then he has naught."],
  		:life => ["I would like to be remembered as a man who had a wonderful time living life, a man who had good friends, fine family - and I don't think I could ask for anything more than that, actually.",
  		 "I'm gonna live till I die.", 
  		 "May you live to be 100 and may the last voice you hear be mine."],
  		:alcohol => ["Alcohol may be man's worst enemy, but the bible says love your enemy.",
  			"I feel sorry for people that don't drink, because when they wake up in the morning, that is the best they are going to feel all day"]
  	}
  	[
  	"<h1>Frank Sinatra's thoughts on: #{tag}</h1>", 
  	"<ul>"
  	].concat(
  	quotes[tag.to_sym].map do |quote|
  		"<li><h3>#{quote}</h3></li>"
  	end
  	).push("</ul>")
  end
end