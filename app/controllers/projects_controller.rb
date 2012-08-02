class ProjectsController < ApplicationController
  before_filter :authenticate_user!

  def index
    @projects = Project.all
    @project = Project.new
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(params[:project])
    @project.user_id = current_user.id
    if @project.save
      redirect_to project_path(@project)
    else
      render "new"
    end #end if
  end

  def show
    @project = Project.find(params[:id])
    @list = List.new
    @todo = Todo.new
  end

  def edit
  end

  def update
  end

  def destroy
  end

end
