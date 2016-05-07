class Twitch < ActiveRecord::Base
  def initialize()
    @results = HTTParty.get("https://api.twitch.tv/kraken/")
  end

  def self.library
    library = Twitch.games.top(limit: 100000)
    library.map(&:name).sort_by {|game| game}
  end
end
