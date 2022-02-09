module ApplicationHelper
  #admin
  def book_by(id)
    if id.present?
      user = User.find(id)
      "#{user.first_name} #{user.last_name}"
    else
      image_tag("Rectangle_dark.svg", height: 20, width: 20)
    end
  end

  def booked_available(id)
    if id.present?
      image_tag("Rectangle_light.svg", height: 20, width: 20) 
    else
      image_tag("Rectangle_dark.svg", height: 20, width: 20)
    end
  end

  def sold_ticket(cinema, movie)
    Ticket.where(cinema_id: cinema, movie_id: movie, user_id: present?).count
  end

  def remaining_ticket(cinema, movie)
    Ticket.where(cinema_id: cinema, movie_id: movie, user_id: nil).count
  end

  
end
