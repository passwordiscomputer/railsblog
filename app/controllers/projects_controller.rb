class ProjectsController < ApplicationController
  before_action :only => [:new, :edit] do
    redirect_to new_user_session_path unless current_user && current_user.admin
  end

  def show
    @project = Project.find(params[:id])
    @new_image = @project.images.new()
    @images = @project.images
  end

  def create
    @project = Project.new(project_params)
    if @project.save
      redirect_to admin_index_path
    else
      redirect_to admin_index_path
    end
  end

  def project_params
    params.require(:project).permit(:title, :description)
  end

end
