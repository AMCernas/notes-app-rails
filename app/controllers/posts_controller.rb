class PostsController < ApplicationController
  before_action :logged_in_user

  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    @post.update(post_params)
    authorize! @post 

    redirect_to posts_path
  end

  def destroy 
    @post = Post.find(params[:id])
    authorize! @post 
    @post.destroy
    redirect_to posts_path
  end

  def create
    @post = Post.new(post_params)
    authorize! @post 
    @post.user_id = current_user.id
    @post.save
    redirect_to posts_path
  end
  private
  def post_params
      params.require(:post).permit(:title, :description, :status, :user_id)
  end
end
