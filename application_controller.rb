require 'bundler'
Bundler.require
require_relative './models/scraper1.rb'
require_relative './models/scraper2.rb'
class MyApp < Sinatra::Base

  get '/home' do
    scraper = TweetScraper.new
    @matthewmatosis_tweets = scraper.matthewmatosis_tweets

    scraper2 = BlogScraper.new
    @ignblog = scraper2.stories
    erb :index
  end

    get'/about' do
       erb :about
    end


end