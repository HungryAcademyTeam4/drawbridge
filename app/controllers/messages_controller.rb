class MessagesController < ApplicationController

  def create
    Message.create(params)
    redirect_to chat_room_path(params[:chat_room_id])
  end

  private

  def build_chat_client
    @chat_client = @chat_client || Faraday.new('http://localhost:3000/api/v1/')
  end

end
