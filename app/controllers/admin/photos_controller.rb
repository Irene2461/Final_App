class Admin::PhotosController < ApplicationController
  before_action :set_photo, only: %i[ show edit update destroy ]

  # GET /photos or /photos.json
  def index
    @photos = Photo.all.page params[:page]
  end

  # GET /photos/1 or /photos/1.json
  def show
  end

  # GET /photos/new
  def new
    @photo = Photo.new
  end

  # GET /photos/1/edit
  def edit
  end

  # POST /photos or /photos.json
  def create
    @photo = Photo.new(photo_params)
    if @photo.save
      redirect_to photo_url(@photo), notice: "Photo was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /photos/1 or /photos/1.json
  def update
    #binding.pry
    if @photo.update(photo_params)
      redirect_to edit_admin_photo_path(@photo), notice: "Photo was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /photos/1 or /photos/1.json
  def destroy
    @photo.destroy
    redirect_to admin_photos_path, notice: "Photo was successfully destroyed."
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_photo
    @photo = Photo.find(params[:id])
  rescue
    redirect_to admin_photos_path, alert: "No photo found"
  end

  # Only allow a list of trusted parameters through.
  def photo_params
    params.require(:photo).permit(:title, :desc, :src, :is_private, :album_id, :user_id)
  end
end
