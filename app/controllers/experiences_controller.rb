class ExperiencesController < ApplicationController
  def index
    @experiences = Experience.all.order('created_at DESC')
  end

  def new
    @experience = Experience.new
  end

  def create
    @experience = Experience.new(experience_params)

    @experience.save
    redirect_to @experience
  end

  def show
    @experience = Experience.find(params[:id])
  end

  def edit
    @experience = Experience.find(params[:id])
  end

  def update
    @experience = Experience.find(params[:id])
    @experience.update(title: params[:experience][:title], text: params[:experience][:text],
    img_url: params[:experience][:img_url], location: params[:experience][:location])
    redirect_to experience_path(@experience)
  end

  def destroy
    @experience = Experience.find(params[:id])
    @experience.destroy
    redirect_to experiences_url, :notice => "Your patient has been deleted"
  end

  private
    def experience_params
      params.require(:experience).permit(:title, :text, :img_url, :location)
    end
end
