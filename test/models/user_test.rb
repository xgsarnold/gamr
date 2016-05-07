require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "Users exist" do
    assert User
  end

  test "Users have tokens upon creation" do
    user = User.new
    assert user.session_tokens
  end
end
