module ApplicationHelper

  def logged_in?
    if cookies["uid"]
      true
    else
      false
    end
  end

  def current_user
    { id: cookies["uid"], user_name: cookies["user_name"] }
  end

    # responses = JSON.parse(@chat_client.get('chat_rooms').body)
    # @chat_rooms = []
    # responses.each do |response|
    #   @chat_rooms << {id: response["chat_room"]["id"], title: response["chat_room"]["title"]}
    # end
    # @chat_rooms

end
