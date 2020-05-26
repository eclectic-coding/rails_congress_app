class UsersController < ApplicationController

  def new
    @user = User.new(params[:id])
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:success] = "Welcome to the 'Your Congress' web site, your home for researching Congress."
      redirect_to user_url(@user)
    else
      render 'new'
    end
  end

  def show
    @user = User.find(params[:id])
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end


end
