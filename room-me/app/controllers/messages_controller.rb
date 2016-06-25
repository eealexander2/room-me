class MessagesController < ActionController::Base
  def create 
    message = Message.create(params)
  end
end