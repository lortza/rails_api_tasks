class UsersController < ApplicationController
  before_action :set_user, only: [:show, :update, :destroy]
  deserializable_resource :user, only: [:create, :update]

  # GET /users
  def index
    @users = User.all

    render jsonapi: @users
  end

  # GET /users/1
  def show
    render jsonapi: @user,
           include: [:tasks],
           fields: { tasks: [:name, :complete] }
  end

  # POST /users
  def create
    @user = User.new(user_params)

    if @user.save
      render json: @user, status: :created, location: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /users/1
  def update
    if @user.update(user_params)
      render json: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  # DELETE /users/1
  def destroy
    @user.destroy
  end

  private
    def set_user
      @user = User.includes(:tasks).find(params[:id])
    end

    def user_params
      params.require(:user).permit(:name)
    end
end
