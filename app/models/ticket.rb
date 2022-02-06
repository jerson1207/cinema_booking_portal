class Ticket < ApplicationRecord
  belongs_to :cinema
  belongs_to :seat
  belongs_to :time_slot
end
