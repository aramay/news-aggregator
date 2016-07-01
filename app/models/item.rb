class Item < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to :feed
  # feed = Feed.new
  # items = feed.items
end
