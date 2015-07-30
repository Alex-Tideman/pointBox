class Admin::RewardsController < AdminController

  def index
    @rewards = Reward.all
  end

  def show
    @reward = Reward.find(params[:id])
  end

  def new
    @reward = Reward.new
  end

  def create
    @reward = Reward.new(reward_params)
    if @reward.save
      redirect_to @reward
    else
      flash[:error] = "Invalid input - Please try creating reward again"
      render :new
    end
  end

  def edit
    @reward = Reward.find(params[:id])
  end

  def update
    @reward = Reward.find(params[:id])
    if @reward.update(reward_type: params[:reward][:reward_type],
                      value: params[:reward][:value])
      redirect_to @reward
    else
      render :edit
    end
  end

  private

  def reward_params
    params.require(:reward).permit(:reward_type,:value)
  end

end