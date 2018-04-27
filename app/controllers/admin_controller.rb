class AdminController < ApplicationController
  def index
    @project = Project.new
  end
end
