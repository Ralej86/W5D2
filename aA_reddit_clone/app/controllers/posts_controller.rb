class PostsController < ApplicationController
  before_action :require_login, except: [:show]
  before_action :author?, only: [:edit, :destroy]

  def new 
    @post = Post.new 
    render :new 
  end 
  
  def create 
    @post = Post.new(post_params)
    @post.user_id = current_user.id 
    # @post.sub_id = params[:sub_id]
    if @post.save 
      redirect_to post_url(@post)
    else 
      flash.now[:errors] = @post.errors.full_messages 
      render :new
    end 
  end 
  
  def show 
    @post = Post.find(params[:id])
    render :show 
  end 
  
  def edit 
    @post = Post.find(params[:id])
    render :edit
  end 
  
  def update
    @post = Post.find(params[:id])
    if @post.update(post_params)
      redirect_to post_url(@post)
     else
      flash.now[:errors] = @post.errors.full_messages
      render :edit
    end
  end 
  
  def destroy
    @post = Post.find(params[:id])
    @post.destroy 
    redirect_to sub_url(@post.sub)
  end 
  
  private 
  
  def post_params 
    params.require(:post).permit(:title, :url, :content)
  end 
  
  def author?
    post = Post.find(params[:id])
    post.user_id == current_user.id
  end

end


