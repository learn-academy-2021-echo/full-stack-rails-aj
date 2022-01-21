class BlogPostController < ApplicationController
  def index
    @blogposts = Blogpost.all
  end
  def show
    @blogpost = Blogpost.find(params[:id])
  end

  def new
    @blogpost = Blogpost.new
  end

  def create
    @blogpost = Blogpost.create(blogpost_params)
    if @blogpost.valid?
      redirect_to blogposts_path
    else
      redirect_to new_blogpost_path
    end
  end

  private
  def blogpost_params
    params.require(:blogpost).pernit(:title, :content)
  end
end
