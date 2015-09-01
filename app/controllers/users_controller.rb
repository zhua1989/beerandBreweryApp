require ('pry')


class UsersController < ApplicationController
    
    ## Action for adding a new user for new form
  def new
    @user = User.new
  end


    ## Action for creating a new user
  def create
    ## check if the username is already in the database
         @user = User.create(user_params)
    if @user.errors.any?
    #   ## if the username is present, then redirect to the login page
      render template: "/users/new"
    else 
      ## If the username is not present, then it creates their account
           user = User.find_by({name: params[:user][:name]})
        ## Start the session for the user
           session[:user_id] = user.id
           redirect_to user_path(user)
    end
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
    params.require(:user).permit(:name, :password, :password_confirmation, :image_url)
  end


  


  end

