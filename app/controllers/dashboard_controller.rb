class DashboardController < ApplicationController

  def show
    @current_user = current_user
  end

  private

  def current_user
    {id: 1}
  end
end
