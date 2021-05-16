class SessionsController < ApplicationController

  def new

  end

  def create
    # look for user in database
    @user = User.find_by(:email => params[:email])
    # if they exist
    if @user
    # open user session
      session[:current_user_id] = @user.id
    else
      redirect_to "/login", :notice => "Couldn't find the user"
    end
  end
end
