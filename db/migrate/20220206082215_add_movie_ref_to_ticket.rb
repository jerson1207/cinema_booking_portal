class AddMovieRefToTicket < ActiveRecord::Migration[7.0]
  def change
    add_reference :tickets, :movie, null: false, foreign_key: true
  end
end
