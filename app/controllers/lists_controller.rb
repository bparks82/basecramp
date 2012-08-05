class ListsController < ApplicationController

  def new
    @list = List.new
  end

  def create
    @list = List.new(params[:list])
    @list.project_id = params[:project_id]
    @project = Project.find(@list.project.id)
    @todo = Todo.new
    respond_to do |format|
      if @list.save
        format.html { redirect_to project_path(@project) }
        format.js
      else
        format.html { render :action => "new" }
        format.js
      end
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
