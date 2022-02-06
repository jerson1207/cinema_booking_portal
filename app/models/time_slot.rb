class TimeSlot < ApplicationRecord
  belongs_to :seat
  belongs_to :cinema
  has_many :ticket, dependent: :destroy
end
