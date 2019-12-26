class ProjectsController < ApplicationController
  def index
    @projects = Project.all
  end

  def new
  end

  def create
    # render plain: params[:project].inspect
    @project = Project.new(project_params)

    @project.save
    redirect_to @project
  end

  def show
    @project = Project.find(params[:id])
  end

  private
    def project_params
      params.require(:project).permit(:title, :text)
    end
end
