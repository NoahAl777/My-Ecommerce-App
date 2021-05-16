class ApplicationController < ActionController::Base
  include ApplicationHelper::SessionsHelper
  # on every page call this action
  # this makes sure that the instance variable gets populated
  before_action :current_user

  def home
  end


end
