require 'rubygems'
require 'twitter'

class TweetFetcher
  
  def get_tweet
    Twitter::Search.new.hashtag(get_term).no_retweets.per_page(1).page(rand(100)).fetch.first
  end
    
  def get_term
     terms =  ["juay", "juayderito"]
     terms[rand(terms.length)]
  end
end