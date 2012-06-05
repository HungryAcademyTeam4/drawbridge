class ChatRoomsController < ApplicationController
  # @chat_client = ChatbotApi::Client.new

  def index
    build_chat_client
    responses = JSON.parse(@chat_client.get('chat_rooms').body)
    @chat_rooms = []
    responses.each do |response|
      @chat_rooms << {id: response["chat_room"]["id"], title: response["chat_room"]["title"]}
    end
    @chat_rooms
  end

  def new
  end

  def create
    build_chat_client
    post = @chat_client.post do |req|
      req.url '/chat_rooms'
      req.headers['Content-Type'] = 'application/json'
      req.body = {title: params[:title]}.to_json
    end
    redirect_to chat_rooms_path
  end

  def show
    build_chat_client
    response = @chat_client.get("chat_rooms/#{params[:id]}")
    response = JSON.parse(response.body)
    response = response["chat_room"]
    @title = response["title"]
    @messages = []
    if response["messages"]
      response["messages"].each do |message|
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