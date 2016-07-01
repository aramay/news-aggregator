response = HTTParty.get("http://rss.cnn.com/rss/cnn_topstories.rss")

feed = RSS::Parser.parse(response.body)
f = Feed.create(title: feed.channel.title)

items = feed.items

items.each do |item|

  Item.create(title: item.title, link: item.link, description: item.description, feed_id: 1)
# binding.pry
  end

