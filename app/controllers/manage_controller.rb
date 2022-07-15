class ManageController < ApplicationController
  def photos
    @photos = Photo.all.page params[:page]
  end

  def albums
    @albums = Album.all.page(params[:page]).per(1)
    @users = User.all
  end

  def users
    @users = User.all.page params[:page]
  end
  
end
