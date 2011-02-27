require 'rubygems'
require 'sinatra'
require 'TweetFetcher'
require 'haml'

@@fetcher = TweetFetcher.new

get '/' do    
    tweet = @@fetcher.get_tweet    
    @ju = '@' + tweet.from_user
    @juay = tweet.text    
    haml :index
end

get '/new_tweet' do
    tweet = @@fetcher.get_tweet     
    {:name => tweet.from_user, :text => tweet.text}.to_json
end