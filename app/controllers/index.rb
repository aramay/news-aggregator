require 'httparty'

get '/hops' do
  @hops = Brewery.new.get_hops
  @hops = @hops.parsed_response["data"]
  @hops.each do |beer|
    if beer["description"] == nil || beer["description"] == "\r\n"
      beer["description"] = "There is no description for this beer yet. Why not? Does it taste like an orange or a black cherry at midnight? Does it dance or fall flat?"
    end
  end
  @hops
  erb :index
end

get '/hop/:id' do
  @hop = Brewery.new.get_hop(params[:id])
  p @hop = @hop["data"]
  erb :show
end

get '/styles' do
  @styles = Brewery.new.get_styles.parsed_response
  @styles = @styles["data"]
  erb :show_styles
end
