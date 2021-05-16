class SessionsController < ApplicationController

  def new

  end

  def create
    # look for user in database
    @user = User.find_by(:email => params[:email])
    # if they exist
    if @user
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
