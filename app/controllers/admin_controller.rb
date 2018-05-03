class AdminController < ApplicationController
  def index
    @new_image = Image.new
    @projects = Project.all
    @new_project = Project.new
  end
end
