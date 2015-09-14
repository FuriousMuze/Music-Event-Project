class UsersController < ApplicationController
  def index
  end

  def show
  end

  def create
    if User.create(user_params)
        #redicret to signed in
        flash[:success] = 'you are registered'
        redirect_to users_path
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
end
