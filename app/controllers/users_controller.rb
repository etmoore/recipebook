class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  def index
    @users = User.all
  end

  def show
  end

  def edit
  end

  def update
    if @user.update(params.require(:user).permit(:user_name, :email))
      redirect_to users_path
    else
      render :edit
    end
  end

  def new
    @user = User.new
  end

  def create
    if User.create(params.require(:user).permit(:user_name, :email))
      redirect_to users_path
    else
      render :new
    end
  end

  def destroy
    @user.destroy
    redirect_to users_path
  end

  private

    def set_user
      @user = User.find(params[:id])
    end
end
