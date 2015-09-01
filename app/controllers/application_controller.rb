class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
<<<<<<< HEAD


    def logged_in?
      if session[:user_id]
        true
      else
        false
      end

    end



    def check_current_user?
      if session[:user_id] == params[:id].to_i
        true
      else
        false
      end

    end
  

=======
>>>>>>> b8b7660dbf352ad5ab7028027078c4ffc44dbd87
end
