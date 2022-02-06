class RemoveMovieTitleToCinemas < ActiveRecord::Migration[7.0]
  def change
    remove_column :cinemas, :movie_title, :string
  end
end
