class MessagesController < ApplicationController

  def create
    Message.create(params)
  end

end
