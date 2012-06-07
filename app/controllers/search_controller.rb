class SearchController < ApplicationController

  def index
    @search_results = mock_search("foo")
  end

  private

  # Mockup content to be replaced by gem/api
  def mock_search(parameter)
    [["username","This is the message", "Stark", "6/5/2012 10AM"],["user2","Welcome to the dollhouse", "Targaryan Takeover", "6/5/2012 10AM"],["user3","Messages are sweet", "Khaleesi", "6/5/2012 10AM"]]
  end
end
