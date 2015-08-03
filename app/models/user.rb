class User < ActiveRecord::Base
  has_secure_password
  validates :username, presence: true,
            uniqueness: true
  enum role: %w(default admin)

  has_many :user_rewards
  has_many :rewards, through: :user_rewards

  def redeem(value)
    self.update(current_points:  self.current_points  -= value)
    self.update(redeemed_points: self.redeemed_points += value)
  end

end
