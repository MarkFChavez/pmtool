class ProjectsController < ApplicationController

  before_filter :authenticate_user!

  def index
	  @projects = current_user.projects
  end

  def show
	  @project = current_user.projects.find(params[:id])
  end

  def new
  end

  def create
	  @project = current_user.projects.build(params[:project])
	
    @project.save

    respond_to do |format|
      @projects = current_user.projects
      
      format.html { redirect_to projects_path, notice:"Project successfully created!"}
      format.js
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
