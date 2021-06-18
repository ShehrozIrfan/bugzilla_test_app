class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    #render plain: params[:user].inspect
    @user = User.new(user_params)
    if @user.save
      flash[:success] = "Welcome to Bugzilla App!"
      redirect_to @user
    else
      render 'new'
    end
  end

  def show

  end


  private
    def user_params
      params.require(:user).permit(:name,:email,:password,:password_confirmation)
    end
end
