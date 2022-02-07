class TicketController < ApplicationController

  def index
    @tickets = Ticket.all
  end

  def show
    
    @cinema = Cinema.find(params[:cinema_id])
    @movie = @cinema.movies.find(params[:movie_id])
    @seat = @movie.seats.find(params[:seat_id])
    @time_slot = @seat.time_slots.find(params[:time_slot_id])
    @ticket = @time_slot.ticket.find(params[:id])
    if current_user.user? && @ticket.user_id.nil?
      @ticket.user_id = current_user.id
      @ticket.save
    end
  end

  def booked
    
  end
end
