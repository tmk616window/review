class MessagesController < ApplicationController
    before_action :authenticate_user!, {only: [:show]}

  
  def index
    @messages = Message.all.order(id: :desc)
  end

  def edit
    @message = Message.find(params[:id])
  end

  def new
    @message = Message.new
  end

  def show
    @message = Message.find(params[:id])
  end
  
  def create
    @message = Message.new(message_params)
    @message.save!
    redirect_to messages_url
  end
  
  def update
    @message = Message.find(params[:id])
    if @message.update!(message_params)
      redirect_to messages_url
    else
      render 'edit'
    end
    
  end
  
  
  def destroy
    @message = Message.find(params[:id])
    @message.destroy
    redirect_to messages_url
  end
  
  private
  
  def message_params
    params.require(:message).permit(:name,:content,:message_id,:date,:place,:people,:message_place,:message_coment,:image)
  end
end
