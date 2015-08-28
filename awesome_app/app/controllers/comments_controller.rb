class CommentsController < ApplicationController

	def create
		if (session[:logged_in])
			Comment.create({user_id: session[:user_id], beer_id: params[:id], content: params[:content]})
			redirect_to beer_path
		end

		private

		def comments_params
			params.require(:comment).permit(:user_id, :beer_id, :content)
		end
	end
end