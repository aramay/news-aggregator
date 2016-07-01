class Brewery
  include HTTParty
  base_uri "http://api.brewerydb.com/v2/"

  def get_hops
    @hops = self.class.get("/hops?key=#{BREW_SECRET}")
  end

  def get_hop(id)
    @hop = self.class.get("/hop/#{id}?key=#{BREW_SECRET}")
  end

  def get_styles
    @styles = self.class.get("/styles?key=#{BREW_SECRET}")
  end

end
