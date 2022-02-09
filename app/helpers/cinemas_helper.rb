module CinemasHelper
  #admin
  def registered_movies(id)
    cinema = Cinema.find(id)
    cinema.movies.count
  end

  def total_booking_cinema(id)

    Cinema.find(id).ticket.all.count -  Cinema.find(id).ticket.where(user_id: nil).count
    # Ticket.where(cinema_id: cinema, movie_id: movie, user_id: nil).count
  end


end
