class Reward < ActiveRecord::Base
  validates :reward_type, presence: true,
            uniqueness: true
  validates :value, presence: true

  has_many :user_rewards
  has_many :users, through: :user_rewards

end
