class SessionsController < ApplicationController
  
  def index
    @user = User.all
  end
  
  def new
    @user = User.new
  end

  def show
  end

  def create
    #the following methods can be placed after the 'new' action method
      user = User.find_by(email: params[:email])

      if user && user.authenticate(params[:password])
        session[:user_id] = user.id

        flash[:success] = 'you are signed in!'
        redirect_to events_path
      else
        #redirect back to the page
        flash[:error] = 'unable to sign you in'

        render 'new'
      end
  end

  def destroy
    session[:user_id] = nil
      flash[:error] = 'you have been logged out'
      redirect_to root_path
  end

  def update
  end


  private
  def user_params
    params.require(:user).permit(:email, :password)
  end
end
