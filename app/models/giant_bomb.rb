class GiantBomb < ActiveRecord::Base
  def initialize(game_id)
    @results = HTTParty.get("http://www.giantbomb.com/api/game/#{game_id}/?api_key=#{ENV[GIANT_BOMB_KEY]}&format=json")
  end
end
