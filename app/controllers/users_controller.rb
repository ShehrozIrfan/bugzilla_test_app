class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    #render plain: params[:user].inspect
    @user = User.new(user_params)
    if @user.save
      log_in @user
      flash[:success] = "Welcome to Bugzilla App!"
      redirect_to root_path
    else
      render 'new'
    end
  end

  def show

  end


  private
    def user_params
      params.require(:user).permit(:name,:email,:password,:password_confirmation,:role)
    end
end
