class AdminController < ApplicationController
  def index
    @projects = Project.all
    @new_project = Project.new
  end
end
