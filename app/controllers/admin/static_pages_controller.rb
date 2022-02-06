class Admin::StaticPagesController < ApplicationController

  def home
    
  end

  def tally
    @cinema = Cinema.all
    
  end
  
end