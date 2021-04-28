class BlogsController < ApplicationController
  include ApplicationHelper
  before_action :require_admin, except: %i[show index]
  before_action :set_blog, only: %i[show edit update destroy]

  def index
    @blogs = Blog.all
  end

  def new
    @blog = Blog.new
  end

  def show; end

  def create
    @blog = Blog.new(blog_params)
    if @blog.save
      flash[:primary] = 'Your new blog is now up!'
      redirect_to root_path
    else
      flash[:danger] = 'Something went wrong!'
      render 'new'
    end
  end

  def edit; end

  def update
    if @blog.update(blog_params)
      flash[:primary] = 'Your blog has been updated!'
      redirect_to root_path
    else
      flash[:danger] = 'Something went wrong!'
      render 'edit'
    end
  end

  def destroy
    if @blog.destroy
      flash[:info] = 'You deleted a blog!'
    else
      flash[:danger] = 'Something went wrong!'
    end
    redirect_to root_path
  end

  private

  def set_blog
    @blog = Blog.find(
    params[:id]
    )
  end

  def blog_params
    params.require(:blog).permit(:title, :body, :image)
  end
end
