module ApplicationHelper

  def logged_in?
    if cookies["uid"]
      true
    else
      false
    end
  end

  def master_room_list
    chat_client = Faraday.new('http://localhost:3000/api/v1/')
    responses = JSON.parse(chat_client.get('chat_rooms').body)
    @chat_rooms = []
    responses.each do |response|
      @chat_rooms << {id: response["chat_room"]["id"], title: response["chat_room"]["title"]}
    end
    @chat_rooms
  end

  def current_user
    { id: 1 }
  end


    # responses = JSON.parse(@chat_client.get('chat_rooms').body)
    # @chat_rooms = []
    # responses.each do |response|
    #   @chat_rooms << {id: response["chat_room"]["id"], title: response["chat_room"]["title"]}
    # end
    # @chat_rooms

end
