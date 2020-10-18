class BlogsController < ApplicationController
  def index
  end

  def show
  end

  def edit
  end

  def new
    @blog = Blog.new
  end
  
  def create
    blog = Bolg.new(blog_params)
    blog.create
    redirect_to blogs_path
  end
  
  private 
  
  def blog_params
    params.require(:bolg).permit(:title, :body, :category)
  end
end
