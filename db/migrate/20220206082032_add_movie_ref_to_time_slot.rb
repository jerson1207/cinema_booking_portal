class AddMovieRefToTimeSlot < ActiveRecord::Migration[7.0]
  def change
    add_reference :time_slots, :movie, null: false, foreign_key: true
  end
end
