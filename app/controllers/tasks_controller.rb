class TasksController < ApplicationController
  authorize_resource
  before_filter :find_task, only: [:edit, :update, :destroy]
  
  def index
    @tasks = Task.all.order("created_at desc")
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(params_task.merge(user: current_user,num: Task.build_number,state: "new"))
    if @task.save
    	redirect_to controller: :home, action: :index
    else
      render "new"
    end
  end

  def update
    if @task.update_attributes(params_task)
      redirect_to controller: :home, action: :index
    else
      render "edit"
    end
  end

  def destroy
    @task.delete
    redirect_to :back
  end

  private
  def params_task
    params.require(:task).permit(:name, :content)
  end

  def find_task
    @task = Task.find(params[:id])
  end
end