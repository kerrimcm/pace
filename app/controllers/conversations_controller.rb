class ConversationsController < ApplicationController
  before_action :authenticate_user! 
  
  def index
    @users = User.all
    @conversations = Conversation.all
    @unread_counts = dummy
  end
  def create  
    if Conversation.between(params[:sender_id], params[:recipient_id]).present? 
       @conversation = Conversation.between(params[:sender_id], params[:recipient_id]).first
    else
       @conversation = Conversation.create!(conversation_params)
    end
    redirect_to conversation_messages_path(@conversation)
  end

  private
  def conversation_params
    params.permit(:sender_id, :recipient_id)
  end

  def dummy
    [{user_id: 4, unread_count: 6},{user_id: 2, unread_count: 0}, {user_id: 3, unread_count: 10}]
  end 

end