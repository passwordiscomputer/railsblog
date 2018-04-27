class ProductsController < ApplicationController
  before_action :only => [:new, :edit] do
    redirect_to new_user_session_path unless current_user && current_user.admin
  end


  def create
    @project = Project.new(story_params)
    if @story.save
      redirect_to root_path
    else
      render :new
    end
  end

  def story_params
    params.require(:project).permit(:title, :description)
  end

end
