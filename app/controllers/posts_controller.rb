class PostsController < ApplicationController
  include ApplicationHelper::SessionsHelper
  # make sure user is logged in first
  before_action :authentication_required

  def new

  end

  def index
    @posts = Post.all
  end

  def create
    @post = Post.new
    @post.topic = params["topic"]
    @post.author_user_id = current_user.id
    if @post.save
      redirect_to '/posts'
    else
      raise @pair.errors.inspect
    end
  end
end
