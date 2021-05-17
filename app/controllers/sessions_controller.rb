class SessionsController < ApplicationController

  def new

  end

  def create
    # look for user in database and authenticate
    @user = User.find_by(:email => params[:email])
    if @user && @user.authenticate(params[:password])
    # if they exist
    # store user id in session
      login(@user)
      redirect_to '/'
    else
      redirect_to "/login", :notice => "Couldn't find the user"
    end
  end

  def destroy
    # log user out
    reset_session
    redirect_to "/"
  end
end
