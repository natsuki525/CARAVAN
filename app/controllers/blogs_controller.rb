class BlogsController < ApplicationController
  def index
  	#記事を前件取得
  	@blogs = Blog.all
  end

  def show
  end

  def new
  	@blog = Blog.new
  end

  def create
  	blog = Blog.new(blog_params)
  	blog.save
  	redirect_to blog_path
  end

  def edit
  end

  private
  def blog_params
  	params.require(:blog).permit(:title, :category, :body)
  end
end
