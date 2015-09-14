class SessionsController < ApplicationController
  def index
  end

  def show
  end

  def create
<<<<<<< HEAD
    
=======
>>>>>>> c28b4ffce7900c0c8a425e0bff7852b4b70cf865
  end

  def destroy
  end

  def update
  end
<<<<<<< HEAD

  def new
    @user = User.new
  end

  private
  def user_params
    params.require(:user).permit(:email, :user_name, :password, :image_url)
  end
=======
>>>>>>> c28b4ffce7900c0c8a425e0bff7852b4b70cf865
end
