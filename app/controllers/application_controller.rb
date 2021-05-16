class ApplicationController < ActionController::Base
  # on every page call this action
  # this makes sure that the instance variable gets populated
  before_action :current_user

  def home
  end

  def current_user
    if session[:current_user_id]
      @current_user = User.find(session[:current_user_id])
    end
  end
end
