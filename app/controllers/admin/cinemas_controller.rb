class Admin::CinemasController < ApplicationController
  before_action :set_cinema, only: %i[ show edit update destroy ]

  def index
    @cinemas = Cinema.all.order('id DESC')
  end

  def destroy
    @cinema.destroy
    redirect_to admin_cinema_path(@cinema)
  end

  def show
    # @movie = @cinema.movies.all.order('id DESC')
  end

  def new
    @cinema = Cinema.new
  end

  def edit
  end

  def create
    @cinema = Cinema.new(cinema_params)
    if @cinema.save
      redirect_to admin_cinemas_path
    end
  end

  def update
    if @cinema.update(cinema_params)
      redirect_to admin_cinema_movies_path(@cinema)
    end
  end



  private
    def set_cinema
      @cinema = Cinema.find(params[:id])
    end

    def cinema_params
      params.require(:cinema).permit(:name)
    end
end


#back up
# if @cinema.save
#   seat1 = Seat.new(name: "Seat 1", cinema_id: @cinema.id )
#   if seat1.save
#     ts1 = TimeSlot.new(name: "10 AM", cinema_id: @cinema.id, seat_id: seat1.id )
#     if ts1.save
#       Ticket.create(cinema_id: @cinema.id, seat_id: seat1.id, time_slot_id: ts1.id )
#     end
#     ts2 = TimeSlot.new(name: "4 PM", cinema_id: @cinema.id, seat_id: seat1.id )
#     if ts2.save
#       Ticket.create(cinema_id: @cinema.id, seat_id: seat1.id, time_slot_id: ts2.id )
#     end
#     ts3 = TimeSlot.new(name: "6 PM", cinema_id: @cinema.id, seat_id: seat1.id )
#     if ts3.save
#         Ticket.create(cinema_id: @cinema.id, seat_id: seat1.id, time_slot_id: ts3.id )
#     end
#     ts4 = TimeSlot.new(name: "10 PM", cinema_id: @cinema.id, seat_id: seat1.id )
#     if ts4.save
#         Ticket.create(cinema_id: @cinema.id, seat_id: seat1.id, time_slot_id: ts4.id )
#     end
#   end
#   # Seat 2
#   seat2 = Seat.new(name: "Seat 2", cinema_id: @cinema.id )
#   if seat2.save
#     ts1 = TimeSlot.new(name: "10 AM", cinema_id: @cinema.id, seat_id: seat2.id )
#     if ts1.save
#         Ticket.create(cinema_id: @cinema.id, seat_id: seat2.id, time_slot_id: ts1.id )
#     end
#     ts2 = TimeSlot.new(name: "4 PM", cinema_id: @cinema.id, seat_id: seat2.id )
#     if ts2.save
#         Ticket.create(cinema_id: @cinema.id, seat_id: seat2.id, time_slot_id: ts2.id )
#     end
#     ts3 = TimeSlot.new(name: "6 PM", cinema_id: @cinema.id, seat_id: seat2.id )
#     if ts3.save
#         Ticket.create(cinema_id: @cinema.id, seat_id: seat2.id, time_slot_id: ts3.id )
#     end
#     ts4 = TimeSlot.new(name: "10 PM", cinema_id: @cinema.id, seat_id: seat2.id )
#     if ts4.save
#         Ticket.create(cinema_id: @cinema.id, seat_id: seat2.id, time_slot_id: ts4.id )
#     end
#   end

#   # Seat 3
#   seat3 = Seat.new(name: "Seat 3", cinema_id: @cinema.id )
#   if seat3.save
#     ts1 = TimeSlot.new(name: "10 AM", cinema_id: @cinema.id, seat_id: seat3.id )
#     if ts1.save
#         Ticket.create(cinema_id: @cinema.id, seat_id: seat3.id, time_slot_id: ts1.id )
#     end
#     ts2 = TimeSlot.new(name: "4 PM", cinema_id: @cinema.id, seat_id: seat3.id )
#     if ts2.save
#         Ticket.create(cinema_id: @cinema.id, seat_id: seat3.id, time_slot_id: ts2.id )
#     end
#     ts3 = TimeSlot.new(name: "6 PM", cinema_id: @cinema.id, seat_id: seat3.id )
#     if ts3.save
#         Ticket.create(cinema_id: @cinema.id, seat_id: seat3.id, time_slot_id: ts3.id )
#     end
#     ts4 = TimeSlot.new(name: "10 PM", cinema_id: @cinema.id, seat_id: seat3.id )
#     if ts4.save
#         Ticket.create(cinema_id: @cinema.id, seat_id: seat3.id, time_slot_id: ts4.id )
#     end
#   end
#   # Seat 4
#   seat4 = Seat.new(name: "Seat 4", cinema_id: @cinema.id )
#   if seat4.save
#     ts1 = TimeSlot.new(name: "10 AM", cinema_id: @cinema.id, seat_id: seat4.id )
#     if ts1.save
#         Ticket.create(cinema_id: @cinema.id, seat_id: seat4.id, time_slot_id: ts1.id )
#     end
#     ts2 = TimeSlot.new(name: "4 PM", cinema_id: @cinema.id, seat_id: seat4.id )
#     if ts2.save
#         Ticket.create(cinema_id: @cinema.id, seat_id: seat4.id, time_slot_id: ts2.id )
#     end
#     ts3 = TimeSlot.new(name: "6 PM", cinema_id: @cinema.id, seat_id: seat4.id )
#     if ts3.save
#         Ticket.create(cinema_id: @cinema.id, seat_id: seat4.id, time_slot_id: ts3.id )
#     end
#     ts4 = TimeSlot.new(name: "10 PM", cinema_id: @cinema.id, seat_id: seat4.id )
#     if ts4.save
#         Ticket.create(cinema_id: @cinema.id, seat_id: seat4.id, time_slot_id: ts4.id )
#     end
#   end
#   # Seat 5
#   seat5 = Seat.new(name: "Seat 5", cinema_id: @cinema.id )
#   if seat5.save
#     ts1 = TimeSlot.new(name: "10 AM", cinema_id: @cinema.id, seat_id: seat5.id )
#     if ts1.save
#         Ticket.create(cinema_id: @cinema.id, seat_id: seat5.id, time_slot_id: ts1.id )
#     end
#     ts2 = TimeSlot.new(name: "4 PM", cinema_id: @cinema.id, seat_id: seat5.id )
#     if ts2.save
#         Ticket.create(cinema_id: @cinema.id, seat_id: seat5.id, time_slot_id: ts2.id )
#     end
#     ts3 = TimeSlot.new(name: "6 PM", cinema_id: @cinema.id, seat_id: seat5.id )
#     if ts3.save
#         Ticket.create(cinema_id: @cinema.id, seat_id: seat5.id, time_slot_id: ts3.id )
#     end
#     ts4 = TimeSlot.new(name: "10 PM", cinema_id: @cinema.id, seat_id: seat5.id )
#     if ts4.save
#         Ticket.create(cinema_id: @cinema.id, seat_id: seat5.id, time_slot_id: ts4.id )
#     end
#   end
#   # Seat 6
#   seat6 = Seat.new(name: "Seat 6", cinema_id: @cinema.id )
#   if seat6.save
#     ts1 = TimeSlot.new(name: "10 AM", cinema_id: @cinema.id, seat_id: seat6.id )
#     if ts1.save
#         Ticket.create(cinema_id: @cinema.id, seat_id: seat6.id, time_slot_id: ts1.id )
#     end
#     ts2 = TimeSlot.new(name: "4 PM", cinema_id: @cinema.id, seat_id: seat6.id )
#     if ts2.save
#         Ticket.create(cinema_id: @cinema.id, seat_id: seat6.id, time_slot_id: ts2.id )
#     end
#     ts3 = TimeSlot.new(name: "6 PM", cinema_id: @cinema.id, seat_id: seat6.id )
#     if ts3.save
#         Ticket.create(cinema_id: @cinema.id, seat_id: seat6.id, time_slot_id: ts3.id )
#     end
#     ts4 = TimeSlot.new(name: "10 PM", cinema_id: @cinema.id, seat_id: seat6.id )
#     if ts4.save
#         Ticket.create(cinema_id: @cinema.id, seat_id: seat6.id, time_slot_id: ts4.id )
#     end
#   end
#   # Seat 7
#   seat7 = Seat.new(name: "Seat 7", cinema_id: @cinema.id )
#   if seat7.save
#     ts1 = TimeSlot.new(name: "10 AM", cinema_id: @cinema.id, seat_id: seat7.id )
#     if ts1.save
#         Ticket.create(cinema_id: @cinema.id, seat_id: seat7.id, time_slot_id: ts1.id )
#     end
#     ts2 = TimeSlot.new(name: "4 PM", cinema_id: @cinema.id, seat_id: seat7.id )
#     if ts2.save
#         Ticket.create(cinema_id: @cinema.id, seat_id: seat7.id, time_slot_id: ts2.id )
#     end
#     ts3 = TimeSlot.new(name: "6 PM", cinema_id: @cinema.id, seat_id: seat7.id )
#     if ts3.save
#         Ticket.create(cinema_id: @cinema.id, seat_id: seat7.id, time_slot_id: ts3.id )
#     end
#     ts4 = TimeSlot.new(name: "10 PM", cinema_id: @cinema.id, seat_id: seat7.id )
#     if ts4.save
#         Ticket.create(cinema_id: @cinema.id, seat_id: seat7.id, time_slot_id: ts4.id )
#     end
#   end
#   # Seat 8
#   seat8 = Seat.new(name: "Seat 8", cinema_id: @cinema.id )
#   if seat8.save
#     ts1 = TimeSlot.new(name: "10 AM", cinema_id: @cinema.id, seat_id: seat8.id )
#     if ts1.save
#         Ticket.create(cinema_id: @cinema.id, seat_id: seat8.id, time_slot_id: ts1.id )
#     end
#     ts2 = TimeSlot.new(name: "4 PM", cinema_id: @cinema.id, seat_id: seat8.id )
#     if ts2.save
#         Ticket.create(cinema_id: @cinema.id, seat_id: seat8.id, time_slot_id: ts2.id )
#     end
#     ts3 = TimeSlot.new(name: "6 PM", cinema_id: @cinema.id, seat_id: seat8.id )
#     if ts3.save
#         Ticket.create(cinema_id: @cinema.id, seat_id: seat8.id, time_slot_id: ts3.id )
#     end
#     ts4 = TimeSlot.new(name: "10 PM", cinema_id: @cinema.id, seat_id: seat8.id )
#     if ts4.save
#         Ticket.create(cinema_id: @cinema.id, seat_id: seat8.id, time_slot_id: ts4.id )
#     end
#   end
#   # Seat 9
#   seat9 = Seat.new(name: "Seat 9", cinema_id: @cinema.id )
#   if seat9.save
#     ts1 = TimeSlot.new(name: "10 AM", cinema_id: @cinema.id, seat_id: seat9.id )
#     if ts1.save
#         Ticket.create(cinema_id: @cinema.id, seat_id: seat9.id, time_slot_id: ts1.id )
#     end
#     ts2 = TimeSlot.new(name: "4 PM", cinema_id: @cinema.id, seat_id: seat9.id )
#     if ts2.save
#         Ticket.create(cinema_id: @cinema.id, seat_id: seat9.id, time_slot_id: ts2.id )
#     end
#     ts3 = TimeSlot.new(name: "6 PM", cinema_id: @cinema.id, seat_id: seat9.id )
#     if ts3.save
#         Ticket.create(cinema_id: @cinema.id, seat_id: seat9.id, time_slot_id: ts3.id )
#     end
#     ts4 = TimeSlot.new(name: "10 PM", cinema_id: @cinema.id, seat_id: seat9.id )
#     if ts4.save
#         Ticket.create(cinema_id: @cinema.id, seat_id: seat9.id, time_slot_id: ts4.id )
#     end
#   end
#   # Seat 10
#   seat10 = Seat.new(name: "Seat 10", cinema_id: @cinema.id )
#   if seat10.save
#     ts1 = TimeSlot.new(name: "10 AM", cinema_id: @cinema.id, seat_id: seat10.id )
#     if ts1.save
#         Ticket.create(cinema_id: @cinema.id, seat_id: seat10.id, time_slot_id: ts1.id )
#     end
#     ts2 = TimeSlot.new(name: "4 PM", cinema_id: @cinema.id, seat_id: seat10.id )
#     if ts2.save
#         Ticket.create(cinema_id: @cinema.id, seat_id: seat10.id, time_slot_id: ts2.id )
#     end
#     ts3 = TimeSlot.new(name: "6 PM", cinema_id: @cinema.id, seat_id: seat10.id )
#     if ts3.save
#         Ticket.create(cinema_id: @cinema.id, seat_id: seat10.id, time_slot_id: ts3.id )
#     end
#     ts4 = TimeSlot.new(name: "10 PM", cinema_id: @cinema.id, seat_id: seat10.id )
#     if ts4.save
#         Ticket.create(cinema_id: @cinema.id, seat_id: seat10.id, time_slot_id: ts4.id )
#     end
#   end