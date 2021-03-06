class Admin::UsersController < ApplicationController
  before_action :set_user, only: %i[ show edit update destroy ]

  # GET /users or /users.json
  def index
    @users = User.all.page params[:page]
  end

  # GET /users/1 or /users/1.json
  def show
  end

  # GET /users/new
  def new
    @user = User.new
  end

  # GET /users/1/edit
  def edit
  end

  # POST /users or /users.json
  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to admin_users_path, notice: "User was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /users/1 or /users/1.json
  def update
    if @user.update(user_params)
      redirect_to edit_admin_user_path(@user), notice: "User was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /users/1 or /users/1.json
  def destroy
    # binding.pry
    @user.destroy!
    redirect_to admin_manage_users_path, notice: "User was successfully destroyed."
  end

  def toggle_like
    @liked = current_user.likes.find_by(likeable_id: params[:likeable_id])

    if @liked.nil?
      @like = current_user.likes.create(like_params)
      render "likes_create"
    else
      @liked.destroy
      render "likes_destroy"
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_user
    @user = User.find(params[:id])
  rescue
    redirect_to admin_users_path, alert: "No user found"
  end

  # Only allow a list of trusted parameters through.
  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :is_admin, :is_active, :avatar)
  end
end
