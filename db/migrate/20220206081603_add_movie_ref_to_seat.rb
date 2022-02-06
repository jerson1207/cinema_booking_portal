class AddMovieRefToSeat < ActiveRecord::Migration[7.0]
  def change
    add_reference :seats, :movie, foreign_key: true
  end
end
