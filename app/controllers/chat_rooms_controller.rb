class ChatRoomsController < ApplicationController

  def index
    @chat_rooms = ChatRoom.all
  end

  def new
  end

  def create
    ChatRoom.create(params)
    redirect_to chat_rooms_path
  end

  def show
    @chat_room = ChatRoom.find_by_id(params[:id])
    @messages = @chat_room.messages
  end

  # def show
  #   build_chat_client
  #   response = @chat_client.get("chat_rooms/#{params[:id]}")
  #   response = JSON.parse(response.body)
  #   @response = response["chat_room"]
  #   @messages = []
  #   if @response["messages"]
  #     @response["messages"].each do |message|
  #       @messages << message["message"]["content"]
  #     end
  #   else
  #     @messages = ["Empty Room"]
  #   end
  # end

  private

  def build_chat_client
    @chat_client = @chat_client || Faraday.new('http://localhost:3000/api/v1/')
  end

end