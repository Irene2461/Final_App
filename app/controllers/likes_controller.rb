class LikesController < ApplicationController
    def create
        # binding.pry
        @like = Like.create(like_params)
        # if !@like.save
        #     flash[:notice] = @like.errors.full_message.to_sentence
        # end
        if @like.likeable_type == "Photo"
            redirect_to feeds_photos_path
        else 
            redirect_to feeds_albums_path
        end
    end

    def destroy
        @like = current_user.likes.find(params[:id])
        likeable = @like.likeable
        type = @like.likeable_type
        @like.destroy
        if type == "Photo"
            redirect_to feeds_photos_path
        else 
            redirect_to feeds_albums_path
        end
    end

    private
    def like_params
        params.require(:like).permit(:likeable_id, :likeable_type, :user_id)
    end
end
