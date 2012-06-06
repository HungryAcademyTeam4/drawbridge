class MessagesController < ApplicationController

  def create
    build_chat_client
    response = @chat_client.post do |req|
      req.url "messages"
      req.headers['Content-Type'] = 'application/json'
      req.body = {content: params[:content], user_id: 1, chat_room_id: params[:chat_room_id].to_i}.to_json
    end
    redirect_to chat_room_path(params[:chat_room_id])
  end

  private

  def build_chat_client
    @chat_client = @chat_client || Faraday.new('http://localhost:3000/api/v1/')
  end

end
