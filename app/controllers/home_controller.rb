class HomeController < ApplicationController
  def index
    @post = Post.all
  end

  def show 
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    Post.create(title: params[:post][:title], content: params[:post][:content])
    redirect_to '/home'
  end
  
  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    @post.update_attributes(title: params[:post][:title], content: params[:post][:content])
    redirect_to '/home'
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to '/home'
  end
end
