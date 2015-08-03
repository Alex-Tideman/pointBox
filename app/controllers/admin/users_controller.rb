class Admin::UsersController < Admin::BaseController


  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(current_points: params[:user][:current_points],
                    redeemed_points: params[:user][:redeemed_points])
      redirect_to admin_user_path(@user)
    else
      render :edit
    end
  end

end