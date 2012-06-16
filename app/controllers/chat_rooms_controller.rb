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
    # foo = @messages.first.created_at
    # raise foo.class.inspect
    count = @messages.try(:count)
    if count
      @messages = @messages[count-6..count-1]
    end
    gon.chat_room = @chat_room
  end

  private

end