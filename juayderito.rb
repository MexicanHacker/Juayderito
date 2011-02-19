require 'sinatra'
require 'twitter'
require 'haml'
get '/' do
    juays =  ["juay", "juayderito"]
    juay_term = juays[rand(juays.length)]
    search = Twitter::Search.new.hashtag(juay_term).no_retweets.per_page(1).page(rand(100)).fetch.first
    @ju = '@' + search.from_user
    @juay = search.text
    
    haml :index
end
