class StaticPagesController < ApplicationController

  def home
    @cinema = Cinema.all
    
  end

  def book_movies
    @ticket = Ticket.where(user_id: current_user.id)
  end

  def about
    
  end
  
end