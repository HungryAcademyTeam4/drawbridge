class CreateChatRooms < ActiveRecord::Migration
  def change
    create_table :chat_rooms do |t|

      t.timestamps
    end
  end
end
