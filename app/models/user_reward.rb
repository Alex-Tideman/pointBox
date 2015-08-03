class UserReward < ActiveRecord::Base
  validates :user_id, :reward_id, presence: true

  belongs_to :user
  belongs_to :reward

  def purchase
    if user.current_points >= reward.value
       user.redeem(reward.value)
       self.save
    else
      false
    end
  end
end

