class Seat < ApplicationRecord
  belongs_to :cinema
  has_many :time_slots, dependent: :destroy
  has_many :ticket, dependent: :destroy
end
