class BaseUrlController < ApplicationController
  before_action :find_user, only: [:index, :edit, :update, :destroy]

  def index
    @post = Post.where user_id: user_id
  end

  def new
    @user = User.new
  end

  def edit
  end

  def create
    @user = User.new user_params
    @user.url_id = user_id
    if @user.save
      redirect_to url_index_path
    else
      render 'new'
    end
  end

  def update
    if @user.update user_params
      redirect_to url_index_path
    else
      render 'edit'
    end
  end

  def destroy
    if @user.destroy
      redirect_to url_index_path
    else
      render 'edit'
    end
  end

  def new_message
    @post = Post.new
  end

  def create_message
    @post = Post.new post_params
    @post.user_id = user_id
    if @post.save
      redirect_to url_index_path
    else
      render 'new_message'
    end
  end

  private

  def user_params
    params.require(:user).permit :name, :about
  end

  def post_params
    params.require(:post).permit :message
  end

  def find_user
    @user = User.find_by_url_id user_id
  end
end
