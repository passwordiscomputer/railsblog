class AdminController < ApplicationController
  def index
    @new_image = Image.new
    @projects = Project.all
    @project = Project.new
  end
end
