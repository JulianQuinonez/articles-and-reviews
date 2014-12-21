require 'open-uri'
require 'nokogiri'

class BlogScraper

    def initialize
        html = open("http://www.ign.com/")
        @nokogiri = Nokogiri::HTML(html)
    end

    def ignblog
        @ignblog = @nokogiri.css('.listElmnt-thumb').to_a
    end

    def stories
        @nokogiri.css('.listElmnt')
    end

end

