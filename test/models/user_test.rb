require 'test_helper'

class UserTest < ActiveSupport::TestCase

  def valid_attributes
    {
        username: "Alex",
        password: "password",
        role: 0
    }

  end

  test "it creates a user" do
    result = User.new(valid_attributes)

    assert result.valid?
    assert_equal "Alex", result.username
    assert_equal "password", result.password
    assert_equal 0, result.current_points
    assert_equal 0, result.redeemed_points
    assert_equal "default", result.role

  end

  test "it cannot create a user without a username" do
    result = User.new(username: nil,
                      password: "password",
                      role: 0)

    assert result.invalid?
  end

  test "it cannot create a fan without an password" do
    result = User.new(username: "Alex",
                      password: nil,
                      role: 0)

    assert result.invalid?
  end


end
