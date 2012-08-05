class TodosController < ApplicationController
  def index
    @todos = Todo.all
  end

  def new
    @todo = Todo.new
  end

  def create
    @todo = Todo.new(params[:todo])
    respond_to do |format|
      if @todo.save
        format.html { redirect_to project_path(@todo.list.project) }
        format.js
      else
        format.html { render :action => "new" }
        format.js
      end
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
