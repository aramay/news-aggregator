helpers do

  def get_feed(url)
    response = HTTParty.get(url)
    RSS::Parser.parse(response.body)
  end

  def get_items

  end

end
