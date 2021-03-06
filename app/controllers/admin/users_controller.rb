class Admin::UsersController < ApplicationController
  before_action :set_user, only: %i[ show edit update destroy ]
  before_action :require_admin

  def require_admin
    unless current_user.admin?
      redirect_to root_path
    end
  end

  def index
    @users = User.all
  end

  def show
  end

  def new
    @user = User.new
  end

  def edit
  end

  # def create
  #   @user = User.new(user_params)
  #   if @user.save
  #     log_in @user
  #     flash[:success] = "Welcome to the Sample App!"
  #     if user.admin?
  #       redirect_to admin_static_pages_path
  #     else
  #       redirect_to root_path
  #     end
  #   else
  #     render :new, status: :unprocessable_entity
  #   end
  # end

  def update
    if @user.update(user_params)
      redirect_to profile_path
    else
      render :edit, status: :unprocessable_entity 
    end
  end

  def destroy
    @user.destroy
    redirect_to users_url
  end

  private
    def set_user
      @user = User.find(params[:id])
    end

    def user_params
      params.require(:user).permit(:first_name, :last_name, :email, :mobile_number, :password, :password_confirmation)
    end
end
