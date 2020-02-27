class BlogpostsController < ApplicationController
  def index
    # @blogposts = Blogpost.all
    @blogposts = Blogpost.page(params[:page]).order('created_at DESC')
  end

  def new
    @blogpost = Blogpost.new
  end

  def create
    @blogpost = Blogpost.new(blogpost_params)

    @blogpost.save
    redirect_to @blogpost
  end

  def edit
    @blogpost = Blogpost.find(params[:id])
  end

  def update
    @blogpost = Blogpost.find(params[:id])
    @blogpost.update(title: params[:blogpost][:title], body: params[:blogpost][:body])
    redirect_to blogpost_path(@blogpost)
  end

  def show
    @blogpost = Blogpost.find(params[:id])
  end

  def destroy
    @blogpost = Blogpost.find(params[:id])
    @blogpost.destroy
    redirect_to blogposts_url, :notice => "Your post has been deleted"
  end

  private
    def blogpost_params
      params.require(:blogpost).permit(:title, :body)
    end
end
