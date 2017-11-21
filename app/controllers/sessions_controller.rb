class SessionsController < ApplicationController

  def new
  end

  def create
    parameter = params[:session]
    @user = User.find_by(username: parameter[:username])

    if @user && @user.authenticate(parameter[:password])
      session[:user_id] = @user.id
      redirect_to "/"
    else
      render :new
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to '/'
  end

end
