require 'httparty'

class Feed


def self.get_feed(url)
  # url = 'http://feeds.nytimes.com/nyt/rss/HomePage'
p url
  response = HTTParty.get(url)

  @feed = RSS::Parser.parse(response.body)

end


  # open (url) do |rss|

  #   @feeds << RSS::Parser.parse(rss)
  # binding.pry
    # puts "title #{feed.channel.title}"

    # @feed.items.each do |item|
    #   # puts "item #{item.title}"
    #   # puts "item link=> #{item.link}"
    #   puts "*" * 20
    #   # puts "item #{item.description}"
    # end
  # end

end