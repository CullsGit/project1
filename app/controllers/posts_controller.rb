class PostsController < ApplicationController
  def index
    @subjects = Subject.all

    sub = params[:sub]

    if !sub.nil?
      @posts = Post.where(:subject_id => sub)
    else
      @posts = Post.all
    end

  end

  def show
    @post = Post.find params[:id]
  end

  def new
    if @current_user.present?
      @post = Post.new
    else
      flash[:error] = "Must be logged in to create posts."
      redirect_to login_path
    end
  end

  def create
    post = Post.create post_params
    @current_user.posts << post
    redirect_to root_path
  end

  def destroy
    post = Post.find params[:id]

    post.destroy
    redirect_to posts_path
  end

  def like
    @post = Post.all.find(params[:id])
    Like.create(user_id: @current_user.id, post_id: @post.id)
    redirect_to @post
  end

  private
  def post_params
    params.require(:post).permit(:title, :body, :subject_id, :user_id)
  end
end
