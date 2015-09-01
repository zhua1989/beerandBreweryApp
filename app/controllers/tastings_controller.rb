class TastingsController < ApplicationController
	
	def update
		@user = User.find(session[:user_id])
		tasting = Tasting.find(params[:id])
		tasting.update({tasting_notes: params[:tasting_notes]}) 
		redirect_to user_path(@user)
	end

  def destroy
    tasting = Tasting.find(params[:id])
    tasting.destroy
    redirect_to user_path(session[:user_id])
  end

end