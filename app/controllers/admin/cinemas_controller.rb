class Admin::CinemasController < ApplicationController
  before_action :set_cinema, only: %i[ show edit update destroy ]

  def index
    @cinemas = Cinema.all.order('id DESC')
    @ticket = Ticket.where(user_id: present?).count
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
      redirect_to admin_cinema_movies_path(@cinema)
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