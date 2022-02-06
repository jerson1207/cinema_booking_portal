class Cinema < ApplicationRecord
  has_many :seats, dependent: :destroy
  has_many :time_slots, dependent: :destroy
  has_many :ticket, dependent: :destroy
end
