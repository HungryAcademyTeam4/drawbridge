
class ChatRoomHistoriesController < ApplicationController

  def show
    @chat_room = ChatRoom.find_by_id(params[:format])
    @messages = @chat_room.messages
  end

end
