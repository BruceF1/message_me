class UsersController < ApplicationController

  def new
     @user = User.new
  end

  def create
     @user = User.new(user_params)
     if @user.save
       flash[:notice]= "You have signed up successfully. Please login"
       redirect_to login_path
     else
       flash[:notice]= "Something went wrong"
       render "new"
     end
  end
  def user_params
    params.require(:user).permit(:username, :email, :password)
  end
end
