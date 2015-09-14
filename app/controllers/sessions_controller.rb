class SessionsController < ApplicationController
  def index
  end

  def show
  end

  def create
    
  end

  def destroy
  end

  def update
  end

  def new
    @user = User.new
  end

  private
  def user_params
    params.require(:user).permit(:email, :user_name, :password, :image_url)
  end
end
