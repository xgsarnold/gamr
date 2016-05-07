require 'test_helper'

class Twitch < ActiveRecord::Base
  attr_reader :response
  def initialize()
    @results = JSON.parse(File.read("./mock_twitch.json"))
  end
end




class TwitchTest < ActiveSupport::TestCase
  test "Twitch exists" do
    assert Twitch
  end

  test "Twitch games have info" do
    destiny = Twitch.new
    assert_equal "Destiny", destiny.response["game"]["name"]
  end

  test "Twitch games have streams" do
    destiny = Twitch.new
    assert_equl "https://www.twitch.tv/planet_destiny", destiny.response["game"]["streams"][338]
  end
end
