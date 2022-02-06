class CreateTimeSlots < ActiveRecord::Migration[7.0]
  def change
    create_table :time_slots do |t|
      t.string :name
      t.references :seat, null: false, foreign_key: true
      t.references :cinema, null: false, foreign_key: true

      t.timestamps
    end
  end
end
