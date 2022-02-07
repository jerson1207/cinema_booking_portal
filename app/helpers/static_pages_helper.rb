module StaticPagesHelper

  def display_movie_title(id)
    movie = Movie.find(id)
    movie.title
  end

  def display_cinema_name(id)
    cinema = Cinema.find(id)
    cinema.name
  end

  def display_time_slot(id)
    time_slot = TimeSlot.find(id)
    time_slot.name
  end

  def display_seat(id)
    seat = Seat.find(id)
    seat.name
  end


  #admin
  def ticket_count(id)
    Ticket.where(cinema_id: id, user_id: present?).count
  end

end
