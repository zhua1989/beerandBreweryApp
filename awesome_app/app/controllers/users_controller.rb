class UsersController < ApplicationController
	
    
  def new
    @user = User.new
  end


  def create
    new_user = User.create(name: params[:name].downcase, password: params[:password], image_url: params[:image_url])
 	  user = User.find_by({name: params[:name]})
    session[:user_id] = user.id
    redirect_to user_path(user)
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

    def edit
    	@user = User.find(session[:user_id])
    end


    def update
       @user = User.find(session[:user_id])
       if logged_in? && check_current_user? 
        @user.update(image_url: params[:image])
        redirect_to user_path(@user)
      else
        redirect_to user_path(@user)
      end
    end


  private


  def user_params
    params.require(:user).permit(:name, :password, :image_url)
  end


  


  end

