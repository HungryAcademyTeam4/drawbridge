module DashboardHelper

  # TODO: Switch for real data from Metrics

  def total_users
    @total_users = rand(10..100)
  end

  def active_users
    rand(0..@total_users)
  end

  def daily_active_users
    rand(0..@total_users)
  end

  def weekly_active_users
    rand(0..@total_users)
  end

  def monthly_active_users
    rand(0..@total_users)
  end

  def total_public_rooms
    @total_public_rooms = @total_public_rooms || rand(10..30)
  end

  def total_private_rooms
    @total_private_rooms = @total_private_rooms || rand(10..30)
  end

  def total_rooms
    total_public_rooms + total_private_rooms
  end

  def total_active_rooms
    rand(0..total_rooms)
  end

  def total_completed_rooms
    rand(0..30)
  end

  def total_closed_rooms
    rand(0..10)
  end

  def public_rooms(user)
    rand(0..@total_public_rooms)
  end

  def private_rooms(user)
    rand(0..@total_private_rooms)
  end

  def percent_total_rooms(user)
    "25%"
  end

  def most_popular_room
    "The Nightwatch"
  end

  def mock_dashboard_search_results
    [["username","This is the message", "Stark", "6/5/2012 10AM"],["user2","Welcome to the dollhouse", "Targaryan Takeover", "6/5/2012 10AM"],["user3","Messages are sweet", "Khaleesi", "6/5/2012 10AM"]]
  end

end
