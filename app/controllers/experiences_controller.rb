class ExperiencesController < ApplicationController
  def index
    @experiences = Experience.all
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

  def destroy
    @experience = Experience.find(params[:id])
    @experience.destroy
    redirect_to "experiences/index", :notice => "Your patient has been deleted"
  end

  private
    def experience_params
      params.require(:experience).permit(:title, :text, :img_url, :location)
    end
end
