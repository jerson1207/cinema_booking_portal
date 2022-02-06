class Admin::TicketController < ApplicationController

  def index
    @tickets = Ticket.all
  end

  def show
    
    @cinema = Cinema.find(params[:cinema_id])
    @seat = @cinema.seats.find(params[:seat_id])
    @time_slot = @seat.time_slots.find(params[:time_slot_id])
    @ticket = @time_slot.ticket.find(params[:id])
  end
end
