class PostsController < ApplicationController
  def index
  	@posts = Post.all
  	render :json => @posts
  end

  def show
  	@post = Post.find(params[:id])
  	render :json => @post
  end

  def new
  end

  def create
  	@post = Post.create(title: params[:title], description: params[:description])
  	redirect_to posts_path
  end

  def edit
  end

  def update
  	@post = Post.find(params[:id])
  	@post.update(title: params[:title], description: params[:description])
  	render :json => @post
  end

  def destroy
  	@post = Post.find(params[:id])
  	@post.destroy()
  	redirect_to posts_path
  end
end
