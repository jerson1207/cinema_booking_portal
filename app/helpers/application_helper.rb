module ApplicationHelper
  #admin
  def book_by(id)
    if id.present?
      user = User.find(id)
      "#{user.first_name} #{user.last_name}"
    else
      "AVAILABLE"
    end
  end

  def booked_available(id)
    if id.present?
      "SOLD"
    else
      "AVAILABLE"
    end
  end

  def sold_ticket(cinema, movie)
    Ticket.where(cinema_id: cinema, movie_id: movie, user_id: present?).count
  end

  def remaining_ticket(cinema, movie)
    Ticket.where(cinema_id: cinema, movie_id: movie, user_id: nil).count
  end

  
end
