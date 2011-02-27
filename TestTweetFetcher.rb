require 'TweetFetcher'
require 'test/unit'

class TestTweetFetcher < Test::Unit::TestCase
   
   def setup
      @fetcher = TweetFetcher.new
   end
   
   def test_get_tweet
        assert_not_nil(@fetcher.get_tweet) 
   end
   
   def test_get_term
       assert_not_nil(@fetcher.get_term)
   end
    
end