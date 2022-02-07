class Admin::MoviesController < ApplicationController
  before_action :set_movie, only: %i[ show edit update destroy ]

  def index
    @cinema = Cinema.find(params[:cinema_id])
    @movie = Cinema.find(params[:cinema_id]).movies.all
  end

  def show
    @cinema = Cinema.find(params[:cinema_id])
    @movie = @cinema.movies.find(params[:id])

    @seat = Seat.where(cinema_id: @cinema.id, movie_id: @movie.id)
    @time_10am = @movie.time_slots.where(name: "10 AM")
    @time_2pm = @movie.time_slots.where(name: "2 PM")
    @time_6pm = @movie.time_slots.where(name: "6 PM")
    @time_10pm = @movie.time_slots.where(name: "10 PM")
  end

  def new
    @cinema = Cinema.find(params[:cinema_id])
    @movie = @cinema.movies.new
    
  end

  def edit
    @cinema = Cinema.find(params[:cinema_id])
    @movie = @cinema.movies.find(params[:id])
  end

  def create
    @cinema = Cinema.find(params[:cinema_id])
    @movie = Movie.new(movie_params)
    if @movie.save
      seat1 = Seat.new(name: "Seat 1", cinema_id: @cinema.id, movie_id: @movie.id )
      if seat1.save
        ts1 = TimeSlot.new(name: "10 AM", cinema_id: @cinema.id, movie_id: @movie.id, seat_id: seat1.id )
        if ts1.save
          Ticket.create(cinema_id: @cinema.id, movie_id: @movie.id, seat_id: seat1.id, time_slot_id: ts1.id )
        end
        ts2 = TimeSlot.new(name: "2 PM", cinema_id: @cinema.id, movie_id: @movie.id, seat_id: seat1.id )
        if ts2.save
          Ticket.create(cinema_id: @cinema.id, movie_id: @movie.id, seat_id: seat1.id, time_slot_id: ts2.id )
        end
        ts3 = TimeSlot.new(name: "6 PM", cinema_id: @cinema.id, movie_id: @movie.id, seat_id: seat1.id )
        if ts3.save
            Ticket.create(cinema_id: @cinema.id, movie_id: @movie.id, seat_id: seat1.id, time_slot_id: ts3.id )
        end
        ts4 = TimeSlot.new(name: "10 PM", cinema_id: @cinema.id, movie_id: @movie.id, seat_id: seat1.id )
        if ts4.save
            Ticket.create(cinema_id: @cinema.id, movie_id: @movie.id, seat_id: seat1.id, time_slot_id: ts4.id )
        end
      end
      # Seat 2
      seat2 = Seat.new(name: "Seat 2", cinema_id: @cinema.id, movie_id: @movie.id )
      if seat2.save
        ts1 = TimeSlot.new(name: "10 AM", cinema_id: @cinema.id, movie_id: @movie.id, seat_id: seat2.id )
        if ts1.save
            Ticket.create(cinema_id: @cinema.id, movie_id: @movie.id, seat_id: seat2.id, time_slot_id: ts1.id )
        end
        ts2 = TimeSlot.new(name: "2 PM", cinema_id: @cinema.id, movie_id: @movie.id, seat_id: seat2.id )
        if ts2.save
            Ticket.create(cinema_id: @cinema.id, movie_id: @movie.id, seat_id: seat2.id, time_slot_id: ts2.id )
        end
        ts3 = TimeSlot.new(name: "6 PM", cinema_id: @cinema.id, movie_id: @movie.id, seat_id: seat2.id )
        if ts3.save
            Ticket.create(cinema_id: @cinema.id, movie_id: @movie.id, seat_id: seat2.id, time_slot_id: ts3.id )
        end
        ts4 = TimeSlot.new(name: "10 PM", cinema_id: @cinema.id, movie_id: @movie.id, seat_id: seat2.id )
        if ts4.save
            Ticket.create(cinema_id: @cinema.id, movie_id: @movie.id, seat_id: seat2.id, time_slot_id: ts4.id )
        end
      end

      # Seat 3
      seat3 = Seat.new(name: "Seat 3", cinema_id: @cinema.id, movie_id: @movie.id )
      if seat3.save
        ts1 = TimeSlot.new(name: "10 AM", cinema_id: @cinema.id, movie_id: @movie.id, seat_id: seat3.id )
        if ts1.save
            Ticket.create(cinema_id: @cinema.id, movie_id: @movie.id, seat_id: seat3.id, time_slot_id: ts1.id )
        end
        ts2 = TimeSlot.new(name: "2 PM", cinema_id: @cinema.id, movie_id: @movie.id, seat_id: seat3.id )
        if ts2.save
            Ticket.create(cinema_id: @cinema.id, movie_id: @movie.id, seat_id: seat3.id, time_slot_id: ts2.id )
        end
        ts3 = TimeSlot.new(name: "6 PM", cinema_id: @cinema.id, movie_id: @movie.id, seat_id: seat3.id )
        if ts3.save
            Ticket.create(cinema_id: @cinema.id, movie_id: @movie.id, seat_id: seat3.id, time_slot_id: ts3.id )
        end
        ts4 = TimeSlot.new(name: "10 PM", cinema_id: @cinema.id, movie_id: @movie.id, seat_id: seat3.id )
        if ts4.save
            Ticket.create(cinema_id: @cinema.id, movie_id: @movie.id, seat_id: seat3.id, time_slot_id: ts4.id )
        end
      end
      # Seat 4
      seat4 = Seat.new(name: "Seat 4", cinema_id: @cinema.id, movie_id: @movie.id )
      if seat4.save
        ts1 = TimeSlot.new(name: "10 AM", cinema_id: @cinema.id, movie_id: @movie.id, seat_id: seat4.id )
        if ts1.save
            Ticket.create(cinema_id: @cinema.id, movie_id: @movie.id, seat_id: seat4.id, time_slot_id: ts1.id )
        end
        ts2 = TimeSlot.new(name: "2 PM", cinema_id: @cinema.id, movie_id: @movie.id, seat_id: seat4.id )
        if ts2.save
            Ticket.create(cinema_id: @cinema.id, movie_id: @movie.id, seat_id: seat4.id, time_slot_id: ts2.id )
        end
        ts3 = TimeSlot.new(name: "6 PM", cinema_id: @cinema.id, movie_id: @movie.id, seat_id: seat4.id )
        if ts3.save
            Ticket.create(cinema_id: @cinema.id, movie_id: @movie.id, seat_id: seat4.id, time_slot_id: ts3.id )
        end
        ts4 = TimeSlot.new(name: "10 PM", cinema_id: @cinema.id, movie_id: @movie.id, seat_id: seat4.id )
        if ts4.save
            Ticket.create(cinema_id: @cinema.id, movie_id: @movie.id, seat_id: seat4.id, time_slot_id: ts4.id )
        end
      end
      # Seat 5
      seat5 = Seat.new(name: "Seat 5", cinema_id: @cinema.id, movie_id: @movie.id )
      if seat5.save
        ts1 = TimeSlot.new(name: "10 AM", cinema_id: @cinema.id, movie_id: @movie.id, seat_id: seat5.id )
        if ts1.save
            Ticket.create(cinema_id: @cinema.id, movie_id: @movie.id, seat_id: seat5.id, time_slot_id: ts1.id )
        end
        ts2 = TimeSlot.new(name: "2 PM", cinema_id: @cinema.id, movie_id: @movie.id, seat_id: seat5.id )
        if ts2.save
            Ticket.create(cinema_id: @cinema.id, movie_id: @movie.id, seat_id: seat5.id, time_slot_id: ts2.id )
        end
        ts3 = TimeSlot.new(name: "6 PM", cinema_id: @cinema.id, movie_id: @movie.id, seat_id: seat5.id )
        if ts3.save
            Ticket.create(cinema_id: @cinema.id, movie_id: @movie.id, seat_id: seat5.id, time_slot_id: ts3.id )
        end
        ts4 = TimeSlot.new(name: "10 PM", cinema_id: @cinema.id, movie_id: @movie.id, seat_id: seat5.id )
        if ts4.save
            Ticket.create(cinema_id: @cinema.id, movie_id: @movie.id, seat_id: seat5.id, time_slot_id: ts4.id )
        end
      end
      # Seat 6
      seat6 = Seat.new(name: "Seat 6", cinema_id: @cinema.id, movie_id: @movie.id )
      if seat6.save
        ts1 = TimeSlot.new(name: "10 AM", cinema_id: @cinema.id, movie_id: @movie.id, seat_id: seat6.id )
        if ts1.save
            Ticket.create(cinema_id: @cinema.id, movie_id: @movie.id, seat_id: seat6.id, time_slot_id: ts1.id )
        end
        ts2 = TimeSlot.new(name: "2 PM", cinema_id: @cinema.id, movie_id: @movie.id, seat_id: seat6.id )
        if ts2.save
            Ticket.create(cinema_id: @cinema.id, movie_id: @movie.id, seat_id: seat6.id, time_slot_id: ts2.id )
        end
        ts3 = TimeSlot.new(name: "6 PM", cinema_id: @cinema.id, movie_id: @movie.id, seat_id: seat6.id )
        if ts3.save
            Ticket.create(cinema_id: @cinema.id, movie_id: @movie.id, seat_id: seat6.id, time_slot_id: ts3.id )
        end
        ts4 = TimeSlot.new(name: "10 PM", cinema_id: @cinema.id, movie_id: @movie.id, seat_id: seat6.id )
        if ts4.save
            Ticket.create(cinema_id: @cinema.id, movie_id: @movie.id, seat_id: seat6.id, time_slot_id: ts4.id )
        end
      end
      # Seat 7
      seat7 = Seat.new(name: "Seat 7", cinema_id: @cinema.id, movie_id: @movie.id )
      if seat7.save
        ts1 = TimeSlot.new(name: "10 AM", cinema_id: @cinema.id, movie_id: @movie.id, seat_id: seat7.id )
        if ts1.save
            Ticket.create(cinema_id: @cinema.id, movie_id: @movie.id, seat_id: seat7.id, time_slot_id: ts1.id )
        end
        ts2 = TimeSlot.new(name: "2 PM", cinema_id: @cinema.id, movie_id: @movie.id, seat_id: seat7.id )
        if ts2.save
            Ticket.create(cinema_id: @cinema.id, movie_id: @movie.id, seat_id: seat7.id, time_slot_id: ts2.id )
        end
        ts3 = TimeSlot.new(name: "6 PM", cinema_id: @cinema.id, movie_id: @movie.id, seat_id: seat7.id )
        if ts3.save
            Ticket.create(cinema_id: @cinema.id, movie_id: @movie.id, seat_id: seat7.id, time_slot_id: ts3.id )
        end
        ts4 = TimeSlot.new(name: "10 PM", cinema_id: @cinema.id, movie_id: @movie.id, seat_id: seat7.id )
        if ts4.save
            Ticket.create(cinema_id: @cinema.id, movie_id: @movie.id, seat_id: seat7.id, time_slot_id: ts4.id )
        end
      end
      # Seat 8
      seat8 = Seat.new(name: "Seat 8", cinema_id: @cinema.id, movie_id: @movie.id )
      if seat8.save
        ts1 = TimeSlot.new(name: "10 AM", cinema_id: @cinema.id, movie_id: @movie.id, seat_id: seat8.id )
        if ts1.save
            Ticket.create(cinema_id: @cinema.id, movie_id: @movie.id, seat_id: seat8.id, time_slot_id: ts1.id )
        end
        ts2 = TimeSlot.new(name: "2 PM", cinema_id: @cinema.id, movie_id: @movie.id, seat_id: seat8.id )
        if ts2.save
            Ticket.create(cinema_id: @cinema.id, movie_id: @movie.id, seat_id: seat8.id, time_slot_id: ts2.id )
        end
        ts3 = TimeSlot.new(name: "6 PM", cinema_id: @cinema.id, movie_id: @movie.id, seat_id: seat8.id )
        if ts3.save
            Ticket.create(cinema_id: @cinema.id, movie_id: @movie.id, seat_id: seat8.id, time_slot_id: ts3.id )
        end
        ts4 = TimeSlot.new(name: "10 PM", cinema_id: @cinema.id, movie_id: @movie.id, seat_id: seat8.id )
        if ts4.save
            Ticket.create(cinema_id: @cinema.id, movie_id: @movie.id, seat_id: seat8.id, time_slot_id: ts4.id )
        end
      end
      # Seat 9
      seat9 = Seat.new(name: "Seat 9", cinema_id: @cinema.id, movie_id: @movie.id )
      if seat9.save
        ts1 = TimeSlot.new(name: "10 AM", cinema_id: @cinema.id, movie_id: @movie.id, seat_id: seat9.id )
        if ts1.save
            Ticket.create(cinema_id: @cinema.id, movie_id: @movie.id, seat_id: seat9.id, time_slot_id: ts1.id )
        end
        ts2 = TimeSlot.new(name: "2 PM", cinema_id: @cinema.id, movie_id: @movie.id, seat_id: seat9.id )
        if ts2.save
            Ticket.create(cinema_id: @cinema.id, movie_id: @movie.id, seat_id: seat9.id, time_slot_id: ts2.id )
        end
        ts3 = TimeSlot.new(name: "6 PM", cinema_id: @cinema.id, movie_id: @movie.id, seat_id: seat9.id )
        if ts3.save
            Ticket.create(cinema_id: @cinema.id, movie_id: @movie.id, seat_id: seat9.id, time_slot_id: ts3.id )
        end
        ts4 = TimeSlot.new(name: "10 PM", cinema_id: @cinema.id, movie_id: @movie.id, seat_id: seat9.id )
        if ts4.save
            Ticket.create(cinema_id: @cinema.id, movie_id: @movie.id, seat_id: seat9.id, time_slot_id: ts4.id )
        end
      end
      # Seat 10
      seat10 = Seat.new(name: "Seat 10", cinema_id: @cinema.id, movie_id: @movie.id )
      if seat10.save
        ts1 = TimeSlot.new(name: "10 AM", cinema_id: @cinema.id, movie_id: @movie.id, seat_id: seat10.id )
        if ts1.save
            Ticket.create(cinema_id: @cinema.id, movie_id: @movie.id, seat_id: seat10.id, time_slot_id: ts1.id )
        end
        ts2 = TimeSlot.new(name: "2 PM", cinema_id: @cinema.id, movie_id: @movie.id, seat_id: seat10.id )
        if ts2.save
            Ticket.create(cinema_id: @cinema.id, movie_id: @movie.id, seat_id: seat10.id, time_slot_id: ts2.id )
        end
        ts3 = TimeSlot.new(name: "6 PM", cinema_id: @cinema.id, movie_id: @movie.id, seat_id: seat10.id )
        if ts3.save
            Ticket.create(cinema_id: @cinema.id, movie_id: @movie.id, seat_id: seat10.id, time_slot_id: ts3.id )
        end
        ts4 = TimeSlot.new(name: "10 PM", cinema_id: @cinema.id, movie_id: @movie.id, seat_id: seat10.id )
        if ts4.save
            Ticket.create(cinema_id: @cinema.id, movie_id: @movie.id, seat_id: seat10.id, time_slot_id: ts4.id )
        end
      end
      redirect_to admin_cinema_movie_path(@cinema, @movie)
    end
  end

  def update
    @cinema = Cinema.find(params[:cinema_id])
    if @movie.update(movie_params)
      redirect_to admin_cinema_movies_path(@cinema)
    end
  end

  def destroy
    @cinema = Cinema.find(params[:cinema_id])
    @movie.destroy
    redirect_to admin_cinema_movies_path(@cinema)
  end
  
  private
    def set_movie
      @movie = Movie.find(params[:id])
    end

    def movie_params
      params.require(:movie).permit(:title, :cinema_id)
    end
end
