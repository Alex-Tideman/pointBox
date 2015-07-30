class Reward < ActiveRecord::Base
  validates :reward_type, presence: true,
            uniqueness: true
  validates :value, presence: true
end
