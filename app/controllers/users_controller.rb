class UsersController < ApplicationController
  def index
    @user = User.all
  end

  def show
  end

  def create
    @user = User.create(user_params)
      if @user = User.save              
      session[:user_id] = user.id
      #redirect to signed in
      flash[:success] = 'you are registered'
      redirect_to root_path
      else

        flash[:error] = 'registration has failed'

        redirect_to new_session_path

      end

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
    params.require(:user).permit(:email,:password,:password_confirmation)
  end
end
