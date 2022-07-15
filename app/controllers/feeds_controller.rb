class FeedsController < ApplicationController
  def photos
    @photos = Photo.all.page params[:page]
    @users = User.all
  end

  def albums
    @albums = Album.all.page params[:page]
    @users = User.all.page params[:page]
  end
end
