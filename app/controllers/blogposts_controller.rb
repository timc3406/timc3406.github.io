class BlogpostsController < ApplicationController
  def index
    @blogposts = Blogpost.all
  end

  def new
    @blogpost = Blogpost.new
  end

  def create
    # render plain: params[:project].inspect
    @blogpost = Blogpost.new(blogpost_params)

    @blogpost.save
    redirect_to @blogpost
  end

  def show
    @blogpost = Blogpost.find(params[:id])
  end

  private
    def blogpost_params
      params.require(:blogpost).permit(:title, :body)
    end
end
