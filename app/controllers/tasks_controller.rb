class TasksController < ApplicationController
  def index
    @tasks = Task.all.order(id: :desc)
  end
    
  
  def new
  end
  
  def show
    @task = Task.find(params[:id])
    @like = Like.new
    @likes = Like.where(task_id: params[:id])
    @like_user = @likes.find_by(user_id: current_user.id)
  end
  
  def edit
  end
  
  private
  
  
  def task_params
    params.require(:task).permit(:job)
  end
end
