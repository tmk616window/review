class TasksController < ApplicationController
  def index
    @tasks = Task.all.order(id: :desc)
    gon.data = []
    6.times do
      gon.data << rand(100.0)
    end
    
  end
  
  def new
  end
  
  def show
  end
  
  def edit
  end
  
  private
  
  
  def task_params
    params.require(:task).permit(:job)
  end
end
