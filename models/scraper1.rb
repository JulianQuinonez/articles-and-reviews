require 'open-uri'
require 'nokogiri'

class TweetScraper

    def initialize
        html = open("https://twitter.com/matthewmatosis")
        @nokogiri = Nokogiri::HTML(html)
    end

        # matthewmatosis_tweets.each do |tweet|
        #     puts tweet.text
        # end

    def matthewmatosis_tweets
        @matthewmatosis_tweets = @nokogiri.css('.ProfileTweet-text')
    end



end

