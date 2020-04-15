class UsersController < ApplicationController
  def index
  end

  def show
    @follow = Follow.new
  end

  def new
  end

  def edit
  end
  
  def create
    @user = User.find(params[:id])
    @uder.save
    redirect_to '/tasks'
  end
  
  def user_params
    params.require(:user).permit(:user_id,:coment,:old,:programing_language,:job_past)
  end
end
