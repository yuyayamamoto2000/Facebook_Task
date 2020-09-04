class BlogsController < ApplicationController
  before_action :set_blog, only:[:show, :edit, :update, :destroy]

  def index
    @blog = Blog.all
  end

  def new
    @blog = Blog.new
  end

  def create
    if params[:back]
       render :new
    else
      if @blog.save
        redirect_to new_blog_path, notice: 'ブログを作成しました。'
      else
        render :new
      end
    end
  end

  def show
  end

private

def set_blog
  @blog = Blog.find(params[:id])
end

def blog_params
  params.require(:blog).permit(:title, :content)
end

end
