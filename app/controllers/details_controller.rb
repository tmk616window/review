class DetailsController < ApplicationController
  def index
  end

  def show
    @posts = Post.where(post_id: current_user.id)
    @user = User.find(params[:id])
    @follow = Follow.new
    @follows = Follow.where(user_id: params[:id])
    @follow_user = @follows.find_by(follower_id: current_user.id)
    @follow_current_user = Follow.where(follower_id: @user.id)
  end
  
  def edit
    @user = User.find(params[:id])
  end
  
end
