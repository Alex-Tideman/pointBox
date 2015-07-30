require 'test_helper'

class AdminTest < ActiveSupport::TestCase

  def valid_attributes
    {
        username: "Alex",
        password: "password",
        current_points: 0,
        redeemed_points: 0,
        role: 1
    }

  end

  test "it creates an admin" do
    result = User.new(valid_attributes)

    assert result.valid?
    assert_equal "Alex", result.username
    assert_equal "password", result.password
    assert_equal 0, result.current_points
    assert_equal 0, result.redeemed_points
    assert_equal "admin", result.role

  end

  test "it cannot create an admin without a username" do
    result = User.new(username: nil,
                      password: "password",
                      current_points: 0,
                      redeemed_points: 0,
                      role: 1)

    assert result.invalid?
  end

  test "it cannot create an admin without an password" do
    result = User.new(username: "Alex",
                      password: nil,
                      current_points: 0,
                      redeemed_points: 0,
                      role: 1)

    assert result.invalid?
  end


end
