require 'test_helper'

class RewardTest < ActiveSupport::TestCase

  def valid_attributes
    {
        reward_type: "Pony",
        value: 500
    }
  end

  test "it creates a reward" do
    result = Reward.new(valid_attributes)

    assert result.valid?
    assert_equal "Pony", result.reward_type
    assert_equal 500, result.value
  end

  test "reward is invalid without reward type" do
    result = Reward.new(value: 500)

    assert result.invalid?
  end

  test "reward is invalid without value" do
    result = Reward.new(reward_type: "Pony")

    assert result.invalid?
  end
end
