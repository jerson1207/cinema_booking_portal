class CreateTickets < ActiveRecord::Migration[7.0]
  def change
    create_table :tickets do |t|
      t.references :cinema, null: false, foreign_key: true
      t.references :seat, null: false, foreign_key: true
      t.references :time_slot, null: false, foreign_key: true
      t.integer :user_id

      t.timestamps
    end
  end
end
