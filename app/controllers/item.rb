get '/item/:id' do |id|

  feed = Feed.find(id)

  @items = feed.items

  @items.each do |item|
    Item.new(title: item.title, link: item.link, description: item.description)
binding.pry
  end
  erb :"/index"

end
