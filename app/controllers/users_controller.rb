class UsersController < ApplicationController

  # GET /signup - New User Action
  def new #actions

  end

  # POST /users - Create the User Action
  def create
    @user = User.new
    @user.email = params[:email]
    @user.save

    redirect_to "/login"
  end
end
