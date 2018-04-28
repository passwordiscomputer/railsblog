class ProjectsController < ApplicationController
  before_action :only => [:new, :edit] do
    redirect_to new_user_session_path unless current_user && current_user.admin
  end


  def create
    @project = Project.new(story_params)
    if @project.save
      redirect_to admin_index_path
    else
      redirect_to admin_index_path
    end
  end

  def story_params
    params.require(:project).permit(:title, :description)
  end

end
