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

  # def show
  #   # JQTODO: Use gem for this!
  #   #   Question is, how do I get all messages ass. with a particular room ID?
  #   # @chat_room = ChatRoom.find_by_id(params[:id])
  #   @messages = Message.all
  #   raise @messages.inspect
  # end

  def show
    build_chat_client
    response = @chat_client.get("chat_rooms/#{params[:id]}")
    response = JSON.parse(response.body)
    @response = response["chat_room"]
    @messages = []
    if @response["messages"]
      @response["messages"].each do |message|
        @messages << message["message"]["content"]
      end
    else
      @messages = ["Empty Room"]
    end
  end

  private

  def build_chat_client
    @chat_client = @chat_client || Faraday.new('http://localhost:3000/api/v1/')
  end

end