require 'sinatra'
require 'twitter'
require 'haml'
get '/' do
    search = Twitter::Search.new
    @juay = "#{search.hashtag("juay").no_retweets.per_page(1).page(rand(100)).fetch.first.text}"
    haml :index
end
