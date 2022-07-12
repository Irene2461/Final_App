class FeedsController < ApplicationController
  def photos
    @photos = Photo.all
    @users = User.all
  end
  def albums
    @albums = Album.all
  end
end
