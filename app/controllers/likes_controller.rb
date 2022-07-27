class LikesController < ApplicationController
    def create
        # binding.pry
        if !current_user.likes.find_by(like_params)
            @like = current_user.likes.create(like_params)
            if @like.likeable_type == "Photo"
                redirect_to feeds_photos_path
            else 
                redirect_to feeds_albums_path
            end
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
        params.require(:like).permit(:likeable_id, :likeable_type)
    end
end
