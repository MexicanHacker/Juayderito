require 'rubygems'
require 'sinatra'
require 'twitter'
require 'haml'

get '/' do    
    tweet = TweetFetcher.get_tweet do |t|
      t.hashes = ["juay", "juayderito"]
    end
    
    @ju = '@' + tweet.from_user
    @juay = tweet.text
    
    haml :index
end

get '/new_tweet' do
    tweet = TweetFetcher.get_tweet do |t|
      t.hashes = ["juay", "juayderito"]
    end
    
    {:name => tweet.from_user, :text => tweet.text}.to_json
end


class TweetFetcher
  attr_accessor :hashes
  
  def self.get_tweet
    t = TweetFetcher.new
    yield t
    hash_term = t.get_term 
    Twitter::Search.new.hashtag(hash_term).no_retweets.per_page(1).page(rand(100)).fetch.first
  end
    
  def get_term
    @hashes[rand(@hashes.length)]
  end
end