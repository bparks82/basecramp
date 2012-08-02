class TodosController < ApplicationController
  def index
    @todos = Todo.all
  end

  def new
    @todo = Todo.new
  end

  def create
    @todo = Todo.new(params[:todo])
    if @todo.save
      redirect_to project_path(@todo.list.project)
    else
      render project_path(@project)
    end
  end

  def show
    @todo = Todo.find(params[:id])
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
