class Feed < ActiveRecord::Base
  # Remember to create a migration!
  has_many :items
  # def self.get_feed(url)
  #   # url = 'http://feeds.nytimes.com/nyt/rss/
  #   response = HTTParty.get(url)
  #   self.title = RSS::Parser.parse(response.body)

  # end


end
