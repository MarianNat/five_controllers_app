class Url4Controller < ApplicationController
  before_action :set_user, only: [:index, :edit, :update, :destroy]

  def index
    @post = Post.where("user_id = 4")
  end

  def new
    @user = User.new
  end

  def edit
  end

  def create
    u_params = user_params
    u_params[:url_id] = 4
    @user = User.new(u_params)
    if @user.save
      redirect_to url4_index_path
    else
      render 'new'
    end
  end

  def update
    u_params = user_params
    u_params[:url_id] = 4
    if @user.update(u_params)
      redirect_to url4_index_path
    else
      render 'edit'
    end
  end

  def destroy
    if @user.destroy
      redirect_to url4_index_path
    else
      render 'edit'
    end
  end

  def new_message
    @post = Post.new
  end

  def create_message
    p_params = post_params
    p_params[:user_id] = 4
    @post = Post.new(p_params)
    if @post.save
      redirect_to url4_index_path
    else
      render 'new_message'
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :about)
  end

  def post_params
    params.require(:post).permit(:message)
  end

  def set_user
    @user = User.find_by_url_id(4)
  end
end
