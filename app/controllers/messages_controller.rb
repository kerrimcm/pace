class MessagesController < ApplicationController
  before_action do
    @conversation = Conversation.find(params[:conversation_id])
  end
  
  def index
    @messages = @conversation.messages
    @message = @conversation.messages.new
    update_read_mesages(@conversation, @messages)
  end
  
  def new
    @message = @conversation.messages.new
  end
  
  def create
    @message = @conversation.messages.new(message_params)
    if @message.save
      redirect_to conversation_messages_path(@conversation)
    end
  end

  private
  
  def message_params
    params.require(:message).permit(:body, :user_id, :read)
  end

  def update_read_mesages(conversation, existing_messages)
    existing_messages.each do |message|
      unless message.user_id == current_user.id
        execute_statement("UPDATE messages SET read = '1' WHERE id = #{message.id.to_s}") unless message.id.nil?
      end
    end
  end

  def execute_statement(sql)
    results = ActiveRecord::Base.connection.execute(sql)
  end
end
