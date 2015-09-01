class CommentsController < ApplicationController

    def create
        if (session[:user_id])
            Comment.create({user_id: session[:user_id], beer_id: comment_params[:beer_id], content: comment_params[:content]})
            redirect_to beer_path(comment_params[:beer_id])
        else
            redirect_to beer_path(comment_params[:beer_id])
        end

    end

private

    def comment_params
        params.permit(:beer_id, :content)
    end

end