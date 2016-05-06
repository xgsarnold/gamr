class Twitch < ActiveRecord::Base
  def initialize()
    @results = HTTParty.get("https://api.twitch.tv/kraken/")
  end
end
