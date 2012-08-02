class ListsController < ApplicationController

  def new
    @list = List.new
  end

  def create
    @list = List.new(params[:list])
    @list.project_id = params[:project_id]
    @project = Project.find(@list.project.id)
    if @list.save
      redirect_to project_path(@project)
      # render "projects/show"
    else
      render 'new'
    end
  end

  def edit
  end

  def index
  end

  def destroy
  end

  def update
  end

  def show

  end
end
