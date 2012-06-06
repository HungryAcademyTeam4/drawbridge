module ApplicationHelper

  def logged_in?
    if cookies["uid"]
      true
    else
      false
    end
  end

end
