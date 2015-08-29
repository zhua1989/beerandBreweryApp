class UsersController < ApplicationController

    
  def new
    @user = User.new
  end


  def create
    new_user = User.create(user_params)
    redirect_to root_path
  end


  def show
    actual_user = User.find(session[:user_id])
      if logged_in? && check_current_user? #this is our definition of logged in
        @current_user = User.find(session[:user_id])
        @beers = @current_user.beers
      else
        redirect_to user_path(actual_user)
      end
    end
  end


  private


  def user_params
    params.require(:user).permit(:name, :password, :image_url)
  end



end