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
end
