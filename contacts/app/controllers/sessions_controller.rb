class SessionsController < ApplicationController
  def new
  end

  def create
    username = params[:username]
    password = params[:password]

    user = User.find_by username: username
    if (user) && (user.authenticate password)
      session[:user_id] = user.id
      redirect_to admin_path
    else
      flash.now[:alert] = "Something Wrong"
      render :new
    end
  end

  def destroy
    session.delete :user_id
    redirect_to admin_path
  end
end
