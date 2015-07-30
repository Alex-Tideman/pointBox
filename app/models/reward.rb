class Reward < ActiveRecord::Base
  validates :reward_type, presence: true,
            uniqueness: true
  validates :value, presence: true

  has_many :rewards, through: :user_rewards
end
