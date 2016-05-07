class DashboardController < ApplicationController
  def games
    @games = Twitch.games.top(limit: 100000).map(&:name).sort_by {|game| game}
    # @games = Twitch.games.top(limit: 100000).map(&:name).length
  end

  def home
    @featured = Twitch.games.top(limit: 20).shuffle.take(4)
    # @featured = Twitch.games.find(name: "Destiny")
  end

  def game
    @streams = Twitch.streams.find(game: params[:game])
  end
end
