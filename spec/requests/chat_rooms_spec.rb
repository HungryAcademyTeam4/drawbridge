require 'spec_helper'

describe 'chat rooms' do

  describe "#index" do
    before(:each) do
      visit chat_rooms_path
    end

    it "has a list of chat rooms" do
      page.should have_content "Room Title"
    end
  end
end