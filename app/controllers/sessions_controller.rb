class SessionsController < ApplicationController
  def new
  end

  def create
    @user = User.find(email: params[:email])
    if @user && @user.authenicate(params[:password])
      session[:user_id] = @user.user_id
      redirect_to root_path
    else
      @message = "Either your email or password is incorrect."
      render 'new'
    end
  end

  def destroy
    session.delete(:user_id)
    redirect_to root_path
  end
end
