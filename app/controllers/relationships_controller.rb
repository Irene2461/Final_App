class RelationshipsController < ApplicationController
    def create
        # binding.pry
        @follow = current_user.followings.create(follow_params)
        redirect_to admin_user_path(current_user.id)
    end

    def destroy
        @follow = current_user.followings.find(params[:id])
        @follow.destroy
        redirect_to admin_user_path(current_user.id)
    end

    private
    def follow_params
        params.require(:like).permit(:following_id, :follower_id)
    end
end
