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
  
  
end
