require 'test_helper'

class Twitch < ActiveRecord::Base
  def initialize()
    @results = JSON.parse(File.read("./mock_twitch.json"))
  end
end




class TwitchTest < ActiveSupport::TestCase
  test "Twitch exists" do
    assert Twitch
  end

  test "Twitch games have info" do

  end

  test "Twitch games have streams" do

  end
end
