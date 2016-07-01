require 'rss'
require 'open-uri'
require 'pry-byebug'
require 'pp'



get '/' do

  @feed = Feed.find(1)
  # binding.pry
  p @feed
  erb :"/index"

end


get '/feed' do

  @feed = Feed.find(1)
  # @feeds.items

  erb :"/index"
# binding.pry

end
