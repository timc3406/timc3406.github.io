class ProjectsController < ApplicationController
  def index
    @projects = Project.all
  end

  def new
  end

  def create
    # render plain: params[:project].inspect
    @project = Project.new(project_params).order('created_at DESC')

    @project.save
    redirect_to @project
  end

  def show
    @project = Project.find(params[:id])
  end

  def edit
    @project = Project.find(params[:id])
  end

  def update
    raise params.inspect
  end

  def destroy
    @project = Project.find(params[:id])
    @project.destroy
    redirect_to projects_url, :notice => "Your project has been deleted"
  end

  private
    def project_params
      params.require(:project).permit(:title, :text)
    end
end
