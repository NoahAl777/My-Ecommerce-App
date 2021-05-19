class PostsController < ApplicationController
  include ApplicationHelper::SessionsHelper
  # make sure user is logged in first
  before_action :authentication_required

  def new

  end

  def index
    @posts = Post.by_status(:available)
  end

  def show
    @post = Post.find(params[:id])
  end

  def update
    # raise params.inspect
    @post = Post.find(params[:id])
    @post.buyer_user = current_user
    if @post.accepted_by(current_user)
      redirect_to @post
    else
      render :show
    end
  end

  def create
    @post = Post.new
    @post.title = params["title"]
    @post.price = params["price"]
    @post.description = params["description"]
    @post.author_user_id = current_user.id
    if @post.save
      redirect_to '/posts'
    else
      render :new
    end
  end

  private
  # Strong Params is required only when
  # You are mass assigning data from params

  def post_params
  end
end
