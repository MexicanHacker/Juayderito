require 'sinatra'
require 'twitter'

get '/' do
'Juay!'
search = Twitter::Search.new
"#{search.hashtag("juay").no_retweets.per_page(1).fetch.first.text}"
end
