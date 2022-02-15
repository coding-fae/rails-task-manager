class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def new
    @tasks = Task.new
  end

  def show
    @task = Task.find(params[:id])
  end

  def create
    @tasks = Task.new(params[:task])
    @tasks.save
    redirect_to tasks_path(@tasks)
  end

  def edit
    @tasks = Task.find(params[:id])
  end

  def update
    @tasks = Task.find(params[:id])
    @tasks.update(params[:task])
    redirect_to tasks_path(@tasks)
  end

  def delete
    @tasks = Task.find(params[:id])
    @tasks.destroy
    redirect_to tasks_path(@tasks)
  end

  private

  def tasks_params
    params.require(:task).permit(:title, :details, :completed)
  end
end
