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
    @user = User.new(user_params)
    @user.save
    redirect_to '/tasks'
  end
  
  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to detail_url(@user)
    else
      render 'edit'
    end
      
    
  end
  
  def user_params
    params.require(:user).permit(:user_id,:coment,:old,:programing_language,:job_past,:name)
  end
end
