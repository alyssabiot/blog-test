class PostsController < ApplicationController
  before_action :set_post, only: [:edit, :update, :show, :destroy]
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to posts_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @post.update_attributes(post_params)
      redirect_to @post
    else
      render :edit
    end
  end

  def show
  end

  def destroy
    if @post.destroy
      redirect_to posts_path
    else
      render :index
    end
  end

  private
  def post_params
    params.require(:post).permit(:title, :body, :image)
  end

  def set_post
    @post = Post.find(params[:id])
  end
end
