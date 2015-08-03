class RedeemsController < ApplicationController

  def purchase
    user = User.find(session[:user_id])
    reward = Reward.find(params[:reward_id])
    user_reward = UserReward.new(user_id: user.id, reward_id: reward.id)
    if user_reward.purchase
      flash[:notice] = "Congratulations on your purchase!"
      redirect_to user
    else
      flash[:errors] = "Not enough points for this purchase."
      redirect_to reward
    end
  end
end