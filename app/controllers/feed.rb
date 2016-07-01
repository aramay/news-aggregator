require 'rss'
require 'open-uri'
require 'pry-byebug'



get '/' do

  @feeds = Feed.new
  # binding.pry
  erb :"/index"

end

post '/feed' do
# binding.pry
p params

  feed = Feed.get_feed(params[:feed][:title])
  # redirect "/feed/#{feed.id}"

  erb "/feed/show", locals: {feed: feed}

end


get '/feed/:title' do |id|

  feed = Feed.find(id)

  erb "/feed/index", locals: {feed: feed}

end


get '/feed/:id' do |id|

  feed = Feed.find(id)

  erb "/feed/index", locals: {feed: feed}

end